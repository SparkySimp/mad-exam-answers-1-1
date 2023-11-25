for(i in Get-ChildItem) {
    pushd $i;
    dart run;
    popd;
}