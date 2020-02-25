// not final daimension
teakPlyThickness = 28;
listThickness = 20;
listWidth     = 60;

legThickness  =  listThickness*2;
legLenght     =  400;
legWidth      =  listWidth;

shelfLenght   = 950;
shelfHeight   = 100;
shelfWidth    = 380;
studsLenght   = shelfWidth
    +(listThickness*2);
studsHeight   = listWidth/2-10;
studsAmount   = 21;
studIncrese = (shelfLenght
    -studsAmount*listThickness)
    /(studsAmount-1)+listThickness
    -0.001; 
    
storageLenght = shelfLenght;
storageDepth  = 100;
storageHeight = legLenght-storageDepth;
storageWidth  = shelfWidth;

lidLenght = shelfLenght+20*2;
lidWidth   = shelfWidth+10*2; 



// leg 1
translate([
    0,
    0,
    0]) 
    cube(size = [
    legThickness,
    legWidth,
    legLenght]);
    
// leg 2
translate([
    storageLenght+legThickness,
    0,
    0]) 
    cube(size = [
    legThickness,
    legWidth,
    legLenght]);
    
// leg 3
translate([
    0,
    storageWidth+legWidth,
    0]) 
    cube(size = [
    legThickness,
    legWidth,
    legLenght]);
    
// leg 4
translate([
    storageLenght+legThickness,
    storageWidth+legWidth,
    0]) 
    cube(size = [
    legThickness,
    legWidth,
    legLenght]);
    
    
// shelfStabaliserFront
translate([
    legThickness,
    listWidth/2-listThickness/2,
    shelfHeight]) 
    cube(size = [
    shelfLenght,
    listThickness,
    listWidth]);
    
// shelfStabaliserBack
translate([
    legThickness,
    listWidth/2-listThickness/2
    +storageWidth+legWidth,
    shelfHeight]) 
    cube(size = [
    shelfLenght,
    listThickness,
    listWidth]);
    
// shelfStabaliserLeft
translate([
    legThickness/2-listThickness/2,
    listWidth,
    shelfHeight]) 
    cube(size = [
    listThickness,
    shelfWidth,
    listWidth]);
    
// shelfStabaliserRight
translate([
    storageLenght+legThickness
    +legThickness/2-listThickness/2,
    listWidth,
    shelfHeight]) 
    cube(size = [
    listThickness,
    shelfWidth,
    listWidth]);
    
// shelf  (better algoritem writ it)
for(i = [
    legThickness :
    studIncrese: 
    legThickness+shelfLenght
    -listThickness])
    translate([
        i,
        listWidth/2+listThickness/2,
        shelfHeight]) 
        cube(size = [
        listThickness,
        studsLenght,
        listWidth]);

// storageFront
translate([
    legThickness,
    listWidth/2-teakPlyThickness/2,
    storageHeight]) 
    cube(size = [
    storageLenght,
    teakPlyThickness,
    storageDepth]);

// storageBack
translate([
    legThickness,
    listWidth/2-teakPlyThickness/2
    +storageWidth+legWidth,
    storageHeight]) 
    cube(size = [
    storageLenght,
    teakPlyThickness,
    storageDepth]);
    
// storageRight
// storageLeft
// storageBottom

// lid

