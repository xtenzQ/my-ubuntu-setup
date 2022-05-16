cat vscode-ext.txt | while read extension || [[ -n $extension ]];
do
  code --install-extension $extension --force
done