setBatchMode(true);
imgArray = newArray(nImages);
for (i=0; i<nImages; i++) {
selectImage(i+1);
imgArray[i] = getImageID();
}
for (i=0; i< imgArray.length; i++) {
selectImage(imgArray[i]);
run("Threshold...");
setThreshold(50, 255);
setOption("BlackBackground", true);
run("Convert to Mask");
run("Close");
run("Analyze Particles...", "size=0-Infinity circularity=0.00-1.00 show=Nothing summarize");
}
