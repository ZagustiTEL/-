#include "colors.inc"
#include "textures.inc"

// Камера
camera {
    location <2, 1.5, -3>
    look_at <0, 0.6, 0>
}

// Свет
light_source {
    <3, 5, -2>
    color White
}

// Пол
plane {
    y, 0
    pigment { checker Gray20, White scale 0.5 }
}

// Стол
union {
    // Три плоскости-опоры
    // Передняя левая
    box {
        <-0.6, 0, -0.35>, <-0.4, 0.7, -0.25>
        pigment { Wood }
    }
    // Передняя правая
    box {
        <0.4, 0, -0.35>, <0.6, 0.7, -0.25>
        pigment { Wood }
    }
    // Задняя центральная
    box {
        <-0.1, 0, 0.35>, <0.1, 0.7, 0.45>
        pigment { Wood }
    }

    // Столешница
    box {
        <-0.9, 0.7, -0.6>, <0.9, 0.8, 0.6>
        pigment { Wood }
        finish { specular 0.3 }
    }
}
