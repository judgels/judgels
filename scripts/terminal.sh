#!bin/bash

judgelsapplications=(
	'sealtiel' 
	'jophiel' 
	'sandalphon' 
	'uriel'
)

judgelscolors=(
	'\033[31m'
	'\033[32m'
	'\033[33m'
	'\033[34m'
)

judgelsrepositories=(
	'play-commons'
	'gabriel-commons'
	'frontend-commons'
	'gabriel'
	'sealtiel'
	'jophiel'
	'sandalphon'
	'uriel'
)

total=${#judgelsapplications[*]}
totalrepo=${#judgelsrepositories[*]}
baseDir=/var/judgels

# no param
function judgels-status()
{
	echo "================================================================="
	echo "                        JUDGELS STATUS                           "
	echo "================================================================="
	echo ""

	for (( i=0; i<=$(( $total -1 )); i++ ))
	do
		let "j = i + 1"
		if [ -f $baseDir"/dist/judgels-${judgelsapplications[$i]}.pid" ] && [ -d "/proc/$(<$baseDir"/dist/judgels-${judgelsapplications[$i]}.pid")" ] 
		then
	    	echo -e "${judgelscolors[$i]}$j.judgels-${judgelsapplications[$i]} is RUNNING.\e[0m"
		else 
			echo -e "${judgelscolors[$i]}$j.judgels-${judgelsapplications[$i]} is STOPPED.\e[0m"
		fi
	done

	echo ""
	echo "================================================================="
	echo ""
	echo ""
}

# params: appName port
function run-judgels-app()
{
	cd $baseDir"/judgels-$1"
	./activator run $2
}

# params: appName version port
function start-judgels-app()
{
	cd $baseDir"/dist/$1-$2/bin"
	./$1 -Dpidfile.path=$baseDir/dist/judgels-$1.pid -Dhttp.port=disabled -Dhttps.port=$3 -Dconfig.file=/$baseDir"/dist/$1-$2/conf/application.conf"
}

# no param
function start-gabriel()
{
	cd $baseDir"/judgels-gabriel"
	sbt run
}

# param: appName
function clean-judgels-app()
{
	cd $baseDir"/judgels-$1"
	./activator clean
}

# param: appName
function dist-judgels-app()
{
	cd $baseDir"/judgels-$1"
	./activator dist
}

# param: appName
function clean-dist-judgels-app()
{
	clean-judgels-app "$1"
	dist-judgels-app "$1"
}

# params: appName version
function publish-judgels-app()
{
	cp $baseDir"/judgels-$1/target/universal/$1-$2.zip" $baseDir"/dist/"
	unzip -o $baseDir"/dist/$1-$2.zip" -d $baseDir"/dist/"
}

# param: appName
function kill-judgels-app()
{
	if [ -f $baseDir"/dist/judgels-$1.pid" ] && [ -d "/proc/$(<$baseDir"/dist/judgels-$1.pid")" ] 
	then
		kill -9 $(<$baseDir"/dist/judgels-$1.pid")
		rm $baseDir"/dist/judgels-$1.pid"
	fi
}

# no param
function pull-judgels()
{
	for (( i=0; i<=$(( $totalrepo -1 )); i++ ))
	do
		cd $baseDir"/judgels-${judgelsrepositories[$i]}"
		git stash
		git pull --rebase origin master
		git stash apply
	done
}

# param: version
function release-judgels()
{
	for (( i=0; i<=$(( $totalrepo -1 )); i++ ))
	do
		cd $baseDir"/judgels-${judgelsrepositories[$i]}"
		echo $1 > version.properties
		git commit -m "Bump Version $1"
		git tag -a v$1 -m "Version $1"
		git push --tags origin master 
	done
}

judgels-status
