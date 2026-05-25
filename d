#declare cofdver = union {
    box {
        <19, 0, 4>,      // нижний ближний левый угол
        <13.5, 14.5, 5>  // дальний верхний правый угол
        texture {
            pigment {
                image_map {
                    png "image/coffeparat.png"
                    once
                    map_type 0
                    interpolate 2
                }
                scale <5.5, 14.5, 1>
                translate <13.5, 0, 4>
            }
            finish {
                ambient 0.3
                diffuse 0.7
            }
        }
    }
}

object {
    cofdver
    translate <-13.3, 3, -4>   // смещение к оси вращения (петли)
    rotate <0, -clock * 90, 0> // минус = против часовой стрелки
    translate <13.3, -3, 4>    // возврат на место
}
