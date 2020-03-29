/*
    Shoe Shelf
    by Anton Augustsson
*/

// not final daimension
totalLenght = 800;
totalWidth  = 400;
totalHight  = 450;
lidExtraLenghtOnEachSide = 20;
lidExtraWidthOnEachSide  = 10;
teakPlyThickness  = 18;
teakPlyThickness2 = 14;
listThickness     = 15;
listWidth         = 43;
smallNumber       = 0.001;

// Leg
legThickness  =  21;//listThickness*2;
legLenght     =  totalHight-teakPlyThickness;
legWidth      =  listWidth;

// Shelf
shelfLenght   = totalLenght
    -(legThickness*2+lidExtraLenghtOnEachSide*2);
shelfHeight   = 100;
shelfWidth    = totalWidth
    -(legWidth*2+lidExtraWidthOnEachSide*2);

// Studs 
studsAmount = 10;
studsLenght = shelfWidth+
    listWidth-listThickness;
studsWidth  = 52;
studIncrese = 
    (shelfLenght-studsAmount*studsWidth)
    /(studsAmount-1)
    +studsWidth
    -smallNumber;
    
// Storage    
storageLenght = shelfLenght;
storageDepth  = 110+teakPlyThickness;
storageHeight = legLenght-storageDepth;
storageWidth  = shelfWidth+
    listWidth-teakPlyThickness;
storageBottomLenght = storageLenght-teakPlyThickness*2;

lidLenght = totalLenght;  
lidWidth  = totalWidth;


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
    shelfWidth+legWidth,
    0]) 
    cube(size = [
    legThickness,
    legWidth,
    legLenght]);
    
// leg 4
translate([
    storageLenght+legThickness,
    shelfWidth+legWidth,
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
    +shelfWidth+legWidth,
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
    
// shelfLists  
for(i = [
    legThickness:
    studIncrese: 
    legThickness+shelfLenght
    -studsWidth])
    translate([
        i,
        listWidth/2+teakPlyThickness2/2,
        shelfHeight+listWidth-teakPlyThickness2]) 
        cube(size = [
        studsWidth,
        studsLenght,
        teakPlyThickness2]);

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
    +shelfWidth+legWidth,
    storageHeight]) 
    cube(size = [
    storageLenght,
    teakPlyThickness,
    storageDepth]);
    
// storageRight
translate([
    legThickness,
    listWidth/2+teakPlyThickness/2,
    storageHeight]) 
    cube(size = [
    teakPlyThickness,
    storageWidth,
    storageDepth]);
    
// storageLeft
translate([
    legThickness+storageLenght-teakPlyThickness,
    listWidth/2+teakPlyThickness/2,
    storageHeight]) 
    cube(size = [
    teakPlyThickness,
    storageWidth,
    storageDepth]);
    
// storageBottom
translate([
    legThickness+teakPlyThickness,
    listWidth/2+teakPlyThickness/2,
    storageHeight]) 
    cube(size = [
    storageBottomLenght,
    storageWidth,
    teakPlyThickness]);


// lid
translate([
    -lidExtraLenghtOnEachSide,
    -lidExtraWidthOnEachSide,
    storageHeight+storageDepth])
    cube(size = [
    lidLenght,
    lidWidth,
    teakPlyThickness]);
    