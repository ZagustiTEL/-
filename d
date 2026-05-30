#include "colors.inc"
#include "textures.inc" 
#include "stul.pov" 

camera { 
   location <15, 15, 30>  
   look_at <5, 5, 10>  
 }
      
light_source { <-3, 10, -3> White shadowless }
light_source { <100, 100, -100> color rgb 1 }

background { color rgb<0.2, 0.4, 0.8>  }

plane {
    y, -10
    pigment { checker color Orange, color Yellow scale 10 }
}                                                                                
  
// СТОЛ (из первого кода)
box { <20, 5, 15>, <0, 4.3, 1> texture { pigment { Brown } } }        
box { <19, -4, 1.3>, <1, 5, 1> texture { pigment { Red } } } 
box { <0.3, 5, 13>, <1, -10, 1> texture { pigment { Grey } } } 
box { <19, 5, 13>, <18.3, -10, 1> texture { pigment { Grey } } }

// клава 
box { <5, 5.5, 13>, <14, 5, 8> 
    texture {                  
         pigment { 
          image_map { png "image/Clav.png" once map_type 0 interpolate 2 } 
          scale <17, 12.5, 1>
          translate <7, 0, 4>      
        }
        finish { ambient 0.3 diffuse 0.7 }
    }
}      

// Моник
box { <10, 13, 6>, <11, 5, 5.5> texture { pigment { Black } } } 
box { <5, 16, 6>, <16, 8, 5.5> texture { pigment { Black } } } 
box { <4.9, 16, 6>, <15.9, 8, 5.9>
    texture {                  
         pigment { 
          image_map { png "image/mon.png" once map_type 0 interpolate 2 } 
          scale <12, 12, 1>
          translate <5, 4, 4>    
        }
        finish { ambient 0.3 diffuse 0.7 }
    }
} 
          
// системник          
box { <18, -10, 10>, <14, -1, 4> 
    texture {                  
         pigment { 
          image_map { png "image/sis.png" once map_type 0 interpolate 2 } 
          scale <18, -10, 10>
          translate <14, -1, 4>    
        }
        finish { ambient 0.3 diffuse 0.7 }
    }
}

// ========== СТУЛ (из второго кода, смещён к столу) ==========
// Стул размещается перед столом (с координатами X около 0-10, Z около 2-4)

// Сиденье стула
box { <1.5, -3.8, 3>, <6, -4, 8> texture { pigment { Brown } } }

// Ножки стула
box { <1, -10, 3>, <1.5, 1.4, 3.5> texture { pigment { color Gray } } }                                 
box { <1, -10, 8>, <1.5, 1.4, 7.5> texture { pigment { color Gray } } }
box { <6.2, -10, 8>, <5.7, -9.5, 7.5> texture { pigment { color Gray } } }  
box { <6.2, -10, 3>, <5.7, -9.5, 3.5> texture { pigment { color Gray } } }

// Перекладины между ножками
box { <1, -10, 3>, <1.5, -9.5, 8> texture { pigment { color Gray } } } 
box { <1.5, -4, 8>, <5, -4.5, 7.5> texture { pigment { color Gray } } }  
box { <1.5, -4, 3>, <5, -4.5, 3.5> texture { pigment { color Gray } } }

// Спинка стула
box { <1.5, -1, 3>, <1.7, 2, 8> texture { pigment { wood } } }   

// Заклёпки на спинке (верхние)
cylinder { <1.55, 0, 7.9>, <1.55, 0, 7.8>, 0.09 texture { pigment { color rgb <0.7, 0.7, 0.75> } finish { specular 0.7 roughness 0.01 } } } 
cylinder { <1.55, 1.5, 7.9>, <1.55, 1.5, 7.8>, 0.09 texture { pigment { color rgb <0.7, 0.7, 0.75> } finish { specular 0.7 roughness 0.01 } } }

// Заклёпки на спинке (нижние)
cylinder { <1.55, 0, 3.08>, <1.55, 0, 3.2>, 0.09 texture { pigment { color rgb <0.8, 0.6, 0.15> } finish { specular 0.6 roughness 0.02 } } } 
cylinder { <1.55, 1.5, 3.08>, <1.55, 1.5, 3.2>, 0.09 texture { pigment { color rgb <0.8, 0.6, 0.15> } finish { specular 0.6 roughness 0.02 } } }

// Передние заклёпки на сиденье
cylinder { <2.5, -3.95, 3.2>, <2.5, -3.75, 3.2>, 0.09 texture { pigment { color rgb <0.8, 0.6, 0.15> } finish { specular 0.6 roughness 0.02 } } }
cylinder { <4.5, -3.95, 3.2>, <4.5, -3.75, 3.2>, 0.09 texture { pigment { color rgb <0.8, 0.6, 0.15> } finish { specular 0.6 roughness 0.02 } } }

// Задние заклёпки на сиденье
cylinder { <2.5, -3.95, 7.7>, <2.5, -3.75, 7.7>, 0.09 texture { pigment { color rgb <0.8, 0.6, 0.15> } finish { specular 0.6 roughness 0.02 } } }
cylinder { <4.5, -3.95, 7.7>, <4.5, -3.75, 7.7>, 0.09 texture { pigment { color rgb <0.8, 0.6, 0.15> } finish { specular 0.6 roughness 0.02 } } }

// Дополнительные декоративные элементы стула
box { <0.3, -10, 8>, <0.8, -9.5, 7.5> texture { pigment { color Black } } }  
box { <0.3, -10, 3>, <0.8, -9.5, 3.5> texture { pigment { color Black } } } 
box { <6.7, -10, 8>, <6.2, -9.5, 7.5> texture { pigment { color Black } } } 
box { <6.7, -10, 3>, <6.2, -9.5, 3.5> texture { pigment { color Black } } }  
box { <5, -4, 8>, <5.1, -4.5, 7.5> texture { pigment { color Black } } }  
box { <5, -4, 3>, <5.1, -4.5, 3.5> texture { pigment { color Black } } } 
box { <1, 1.4, 3>, <1.5, 1.5, 3.5> texture { pigment { color Black } } } 
box { <1, 1.4, 8>, <1.5, 1.5, 7.5> texture { pigment { color Black } } } 
