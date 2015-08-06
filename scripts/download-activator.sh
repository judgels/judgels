echo "Downloading Typesafe Activator..."

mkdir -p ~/activator
pushd ~/activator > /dev/null
wget -q http://downloads.typesafe.com/typesafe-activator/1.3.2/typesafe-activator-1.3.2-minimal.zip
unzip typesafe-activator-1.3.2-minimal.zip
mv activator-1.3.2-minimal/* .
rm -rf activator-1.3.2-minimal *.zip
popd > /dev/null

echo "Activator successfully downloaded. Export the executable in PATH by adding this line to your .bashrc:"
echo "    export PATH=\$PATH:~/activator"
