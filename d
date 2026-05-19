#declare stena5 = union {
    box {
        <0, 20, 0>,
        <20, 23, 0.1>
        texture {
            pigment {
                image_map { png "image/lovecoffee.png" once map_type 0 interpolate 2 }
            }
            finish { ambient 0.3 diffuse 0.7 }
        }
    }
    scale <5.5, 14.5, 1>
    translate <13.5, 0, 4>
}

object { stena5 }
