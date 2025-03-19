#!/bin/bash


BASEDIR=$(git rev-parse --show-toplevel)
while [ $# -gt 0 ]; do
case $1 in
    --platform=*)
        platform="${1#*=}"
        ;;
    --sdk=*)
        TI_SDK_PATH="${1#*=}"
        ;;
	--rt=*)
		RT="${1#*=}"
		;;
esac
shift
done

# check whether to build for rt or non rt

if [ ! -z $RT ] && [ $RT -eq 1 ]; then
	suffix="-rt"
fi

if [ -z $platform ] || [ ! -f $BASEDIR/configs/platforms/$platform.mk ] ; then
    echo "Error: invalid platform"
    exit 1
fi

[ -z $TI_SDK_PATH ] && TI_SDK_PATH=$BASEDIR/pkg_${platform}_tisdk-installer
mkdir -p $TI_SDK_PATH
cd $TI_SDK_PATH

### Create Rules.Make
echo "" > Rules.make
echo "### COMMON CONFIG ###" >>  Rules.make
cat $BASEDIR/configs/common.mk >> Rules.make
echo "### TI SDK CONFIG ###" >>  Rules.make
cat $BASEDIR/configs/setup/tisdk-installer.mk >> Rules.make
echo "### PLATFORM CONFIG ###" >>  Rules.make

if [ "$suffix" == "-rt" ]; then
	echo -e "\n### rt fragment config ###" >>  Rules.make
	echo -e "RT_FRAGMENT=ti_rt.config\n" >> Rules.make
fi

cat $BASEDIR/configs/platforms/$platform.mk >> Rules.make

### remove occurence of legacy
sed -i 's/-legacy//g' Rules.make

### Copy Top Level Makefile
cp $BASEDIR/Makefile ./

## Add all required makerule files
# cp -r $BASEDIR/makerules ./
mkdir -p makerules
COMPONENTS_LIST=$(sed -n "s|MAKE_ALL_TARGETS?=||p" $BASEDIR/configs/platforms/$platform.mk)
for comp in $COMPONENTS_LIST;
do
    echo $comp
	if [[ $comp == *legacy* ]]; then
		comp_update=$(echo "$comp" | sed 's/-legacy//')
		cp $BASEDIR/makerules/Makefile_$comp makerules/Makefile_$comp_update
	else
		cp $BASEDIR/makerules/Makefile_$comp makerules/
	fi
done
