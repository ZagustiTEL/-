#include "colors.inc"
#include "textures.inc" 
#include "butt.pov" 

 camera {
   location <20, 13, -40>
   look_at <5, 10, 0>
 }

 light_source { <-3, 10, -3> White  }
 
 background{ NeonBlue}           //Öâåò ôîíà ,à òî÷íåå íåáà íà ðèñóíêå

 //Ïîñòðîåíèå ïàðàëëåëåïèïåäà. 
#declare stool=union{
 box { <0, 0, -1>,                //Íèæíèé áëèæíèé ëåâûé óãîë 
      < 20, 0.5, 13>               //Äàëüíèé âåðõíèé ïðàâûé óãîë
      texture {                  
         pigment { color Grey } //color White -çàêðàñèòü â áåëûé öâåò 
      }                          
   }                               
} 
#declare skaf=union{
object{
  stool
}  

object{
    stool
    translate<0,-9,1>
}  

object{
    stool
    translate<0,-4.5,2>
}  

object{
    stool
    translate<0,20,1>

}       
object{
    stool
    translate<0,23,1>

}    

}
object{
  skaf
}



#declare stena=union{
 box { <0, 0, 0>,                //Íèæíèé áëèæíèé ëåâûé óãîë 
      < 6.5, -8.5, 0>               //Äàëüíèé âåðõíèé ïðàâûé óãîë
      texture {                  
         pigment { wood } //color White -çàêðàñèòü â áåëûé öâåò 
      }                          
   }                               
}

object{
  stena  
  rotate <0,5+clock*80,0>
}
  
object{
    stena
    translate<-6.7,0,0>
    rotate <0,5-clock*80,0>
    translate<13.4,0,0>

} 

object{
    stena
    translate <-6.5, 0, 0>
    rotate <0, 5 - clock * 85, 0>   // ïëþñ âìåñòî ìèíóñà
    translate <6.5 + 13.4, 0, 0>

} 

#declare stena2=union{
 box { <0, -8.5, 0>,                //Íèæíèé áëèæíèé ëåâûé óãîë 
      < 1, 0, 13>               //Äàëüíèé âåðõíèé ïðàâûé óãîë
      texture {                  
         pigment { color Grey } //color White -çàêðàñèòü â áåëûé öâåò 
      }                          
   }                               
} 

object{
  stena2

} 

object{
    stena2
    translate<19,0,0>

}
 

#declare stena3=union{
 box { <0, -8.5, 14>,                //Íèæíèé áëèæíèé ëåâûé óãîë 
      < 20, 23, 10>               //Äàëüíèé âåðõíèé ïðàâûé óãîë
      texture {                  
         pigment { wood } //color White -çàêðàñèòü â áåëûé öâåò 
      }                          
   }                               
}

object{
  stena3  
}


#declare stena4=union{
 box { <0, 20, 0>,                //Íèæíèé áëèæíèé ëåâûé óãîë 
      < 0, 23, 10>               //Äàëüíèé âåðõíèé ïðàâûé óãîë
      texture {                  
         pigment { color Grey } //color White -çàêðàñèòü â áåëûé öâåò 
      }                          
   }                               
}
object{
  stena4
}

object{
    stena4
    translate<20,0,0>

} 

#declare stena5=union{
 box { <0, 20, -1>,                //Íèæíèé áëèæíèé ëåâûé óãîë 
      < 20, 23.5, 0>               //Äàëüíèé âåðõíèé ïðàâûé óãîë
      texture {                  
         pigment { 
          image_map{png "image/lovecoffee.png" once 
          map_type 0
          interpolate 2
          } 
      
      scale <20, 3.5, 1> 
      translate <0, 20, -1>
     

                 }
                  finish { 
                    ambient 0.3 
                    diffuse 0.7  
                  }
              }
          }
      }                        
object{
  stena5
} 

#declare coff=union{
 box { <19, 0, 10>,                //Íèæíèé áëèæíèé ëåâûé óãîë 
      < 13.5, 14.5, 4>               //Äàëüíèé âåðõíèé ïðàâûé óãîë
      texture {                  
         pigment{
         image_map {png "image/coffe.png"once 
         map_type 0 
         interpolate 2} 
      } 
      scale<5.5,14.5,1>
      translate<13.5,0,4>                  
                }
                finish{
                    ambient 0.3
                    diffuse 0.7
                    } 
                }
            }           
                                     
        
object{
  coff
}

#declare stenacoff=union{
 box { <19, 0, 4>,                //Íèæíèé áëèæíèé ëåâûé óãîë 
      < 20, 14.5, 10>               //Äàëüíèé âåðõíèé ïðàâûé óãîë
      texture {                  
         pigment { color Grey } //color White -çàêðàñèòü â áåëûé öâåò 
      }                          
   }                               
}
object{
  stenacoff
}

      
      
      
      
      

#declare cofdver=union{
 box { <19, 0, 4>,                //Íèæíèé áëèæíèé ëåâûé óãîë 
      < 13.5, 14.5, 5>               //Äàëüíèé âåðõíèé ïðàâûé óãîë
      texture {                  
         pigment{
         image_map {png "image/coffeparat.png"once 
         map_type 0 
         interpolate 2} 
      } 
      scale<5.5,14.5,1>
      translate<13.5,0,4>                  
                }
                finish{
                    ambient 0.3
                    diffuse 0.7
                    } 
                }
            }
object{
  cofdver
  translate<-13.3,3,-4>
  rotate<0, 0+clock*90, 0>
  translate<13.3,-3,4> 
}

  
        
        
        
        
        
        
  
#declare kly=union{
 sphere { <5.5, -1.5, 0>,             //Öåíòð øàðà. 
           0.3              //Äàëüíèé âåðõíèé ïðàâûé óãîë
           texture {                  
              pigment { color White } //color White -çàêðàñèòü â áåëûé öâåò 
          }                          
       }                               
    } 
object{
  kly
  rotate <0,5+clock*80,0>
}

object{
    kly
 
    translate<-11.4 , 0, 0>            // ÒÎ ÆÅ ñìåùåíèå
    rotate<0, 5 - clock * 85, 0>     // ÒÎÒ ÆÅ ïîâîðîò
    translate<13.1, 0, 0>  
} 

object{
    kly

    translate<9,-0.1,0>  
    rotate<0, 5 - clock * 80, 0> 
    translate<6.7+13.7, 0, 0>  

}
 plane{ y,-10
          pigment { checker White,Black scale 3 }
 } 
 
#declare box2=union{
 box { <13, 0, 2>,                //Íèæíèé áëèæíèé ëåâûé óãîë 
      < 10, 20, 10>               //Äàëüíèé âåðõíèé ïðàâûé óãîë
      texture {                  
         pigment { color Grey } //color White -çàêðàñèòü â áåëûé öâåò 
      }                          
   }                               
}
object{
  box2
}
#declare box3=union{
 box { <20, 20, 2>,                //Íèæíèé áëèæíèé ëåâûé óãîë 
      < 10, 14, 10>               //Äàëüíèé âåðõíèé ïðàâûé óãîë
      texture {                  
         pigment { color Grey }
      }                          
   }                               
}
object{
  box3
}



#declare podarok=union{
 box { <13, 19, 1>,                //Íèæíèé áëèæíèé ëåâûé óãîë 
      < 18, 14, 1>               //Äàëüíèé âåðõíèé ïðàâûé óãîë
      texture {                  
         pigment { 
          image_map{png "image/podaroc.png" once 
          map_type 0
          interpolate 2
          } 
      
      scale <5, 5, 1>
      translate <13, 14, 0>      

                 }
                  finish { 
                    ambient 0.3 
                    diffuse 0.7  
                  }
              }
          }                                                     
}
object{                                                                                 
  podarok  
}



   

#declare box4=union{
 box { <0, 8, 8>,                //Íèæíèé áëèæíèé ëåâûé óãîë 
      < 11, 7.5, 10>               //Äàëüíèé âåðõíèé ïðàâûé óãîë
      texture {                  
         pigment { color Grey } //color White -çàêðàñèòü â áåëûé öâåò 
      }                          
   }                               
}
object{
  box4
}  

object{
    box4
    translate<0,9,0>       
} 
object{
    box4
    translate<0,3,0>       
}


#declare salfetki=union{
box { <0, 8, 9>,                //Íèæíèé áëèæíèé ëåâûé óãîë 
      < 0.5, 17, 10>               //Äàëüíèé âåðõíèé ïðàâûé óãîë
      texture {                  
         pigment { color Grey } //color White -çàêðàñèòü â áåëûé öâåò 
      }                          
   }                               
}
object{
  salfetki
}


#declare box5=union{
 box { <0, 0, 8>,                //Íèæíèé áëèæíèé ëåâûé óãîë 
      < 0.5, 17, 10>               //Äàëüíèé âåðõíèé ïðàâûé óãîë
      texture {                  
         pigment { color Grey } //color White -çàêðàñèòü â áåëûé öâåò 
      }                          
   }                               
}
object{
  box5
}

object{
    box5
    translate<5,0,0>       
}

#declare box6=union{
 box { <3, 0, 8>,                //Íèæíèé áëèæíèé ëåâûé óãîë 
      < 2.5, 8, 10>               //Äàëüíèé âåðõíèé ïðàâûé óãîë
      texture {                  
         pigment { color Grey } //color White -çàêðàñèòü â áåëûé öâåò 
      }                          
   }                               
}
object{
  box6
}

object{
    box6
    translate<5,0,0>       
}

#declare steklovata=union{
 box { <2.4, 10.5, 4>,                //Íèæíèé áëèæíèé ëåâûé óãîë 
      < 10, 17, 3>               //Äàëüíèé âåðõíèé ïðàâûé óãîë
      texture {Glass3}  
   }                               
}
object{
  steklovata
} 

#declare box7=union{
 box { <3, 17, 10>,                //Íèæíèé áëèæíèé ëåâûé óãîë 
      < 2.5, 11, 8>               //Äàëüíèé âåðõíèé ïðàâûé óãîë
      texture {                  
         pigment { color Grey } //color White -çàêðàñèòü â áåëûé öâåò 
      }                          
   }                               
}
object{
  box7
}
object{
    box7
    translate<5,0,0>       
}
