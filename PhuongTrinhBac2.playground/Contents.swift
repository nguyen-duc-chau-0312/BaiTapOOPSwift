import UIKit

class PhuongTrinhBacHai {
    
    var a: Double
    var b: Double
    var c: Double
    
    init(a: Double, b: Double, c: Double) {
        self.a = a
        self.b = b
        self.c = c
    }
    
    func giaiBaiToan() {
        
        let delta = (b * b) - ( 4  * a * c)
        var result = 0.0
        
        if (a == 0) {
            if (b == 0){
                
                if (c == 0) {
                    
                    print("Phuong trinh vo so nghiem")
                } else {
                    
                    print("Phuong trinh vo nghiem")
                }
                
            } else {
                
                print("Phuong trinh co nghiem duy nhat: \(-c/b)")
            }
            
        } else {
            
            if (delta == 0) {
                
                result = -b / (2 * a)
                print("Phuong trinh co nghiem kep x1 = x2 = \(result)")
                
            } else if (delta < 0 ) {
                
                print("Phuong trinh vo nghiem")
            } else {
                
                let resultX1 = (-b + sqrt(delta)) / (2 * a)
                let resultX2 = (-b - sqrt(delta)) / (2 * a)
                
                print("Phuong trinh co 2 nghiem phan biet: ")
                print("x1 = \(resultX1), x2 = \(resultX2)" )
            }
        }
    }
    
}

let phuongTrinhBac2 = PhuongTrinhBacHai(a: 3, b: -4, c: 1)
phuongTrinhBac2.giaiBaiToan()
