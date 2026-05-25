#declare salfetki=union{
box {  <0, 9, 8>,                //Нижний ближний левый угол 
      <5, 8, 9>              //Дальний верхний правый угол
       texture {                  
         pigment { 
          image_map{png "image/салфетки.png" once 
          map_type 0
          interpolate 2
          } 
      
      scale <5, 5, 1>
      translate <0, 8, 0>      

                 }
                  finish { 
                    ambient 0.3 
                    diffuse 0.7  
                  }
              }
          }                                                     
}
object{
  salfetki
}
