#declare salfetki = union {
    box {  
        <0, 8, 8>,    
        <5, 9, 9>,    
        texture {                  
            pigment { 
                image_map { png "image/салфетки.png" once }
            }
            // НЕ НАДО scale и translate тут! Картинка сама натянется на весь бокс
            finish { 
                ambient 0.3 
                diffuse 0.7  
            }
        }
    }                                                     
}

object { salfetki }
