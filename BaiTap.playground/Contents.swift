import Foundation

//Giai phuong trinh bac 2 su dung OOP
// ax^2+bx+c=0
class Number {
    var a: Double
    var b: Double
    var c: Double
    var result = 0.0
    
    init(a: Double, b: Double, c: Double) {
        self.a = a
        self.b = b
        self.c = c
    }
    
    func giaiPhuongTrinhBac2() {
        let delta = (b * b) - ( 4  * a * c)
        
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
    
    func giaiPhuongTrinhBac4(){
        
        let t = (b * b) - ( 4  * a * c)
        if(t > 0) {
            let resultT1 = (-b + sqrt(t)) / (2 * a)
            let resultT2 = (-b - sqrt(t)) / (2 * a)
            
            if ((resultT1 > 0) && (resultT2 > 0)) {
                
                print("Voi T = \(resultT1) x = \(sqrt(resultT1)) hoac x = \(-sqrt(resultT1))")
                print("Voi T = \(resultT2) x = \(sqrt(resultT2)) hoac x = \(-sqrt(resultT2))")
            } else if ((resultT1 < 0) && (resultT2 > 0)) {
                
                print("Voi T = \(resultT2) x = \(sqrt(resultT2)) hoac x = \(-sqrt(resultT2))")
            } else if ((resultT1 > 0) && (resultT2 < 0)) {
                print("Voi T = \(resultT1) x = \(sqrt(resultT1)) hoac x = \(-sqrt(resultT1))")
            }
            
        } else {
            print("Phuong trinh bac 4 khong thuc hien duoc")
        }
        
    }
    
    func kiemTraSoNguyenTo(n: Int) {
        var i = 2
        var count = 0
        
        if (n < 2) {
            
            print("\(n) khong phai mot so nguyen to")
        } else {
            
            while (i <= n) {
                if (n % i == 0) {
                    
                    count += 1
                }
                i += 1
                
            }
            
            if (count == 1) {
                
                print("\(n) la mot so nguyen to")
            } else {
                
                print("\(n) khong la mot so nguyen to")
            }
        }
        
        
    }
    
    func cacSoNguyenToTrongKhoang(n: Int) -> [Int] {
        
        var currentNum = 0
        var numberArr = [Int]()
        var primeArr = [Int]()
        
        for num in 0..<n {
            currentNum = num
            
            var count = 0
            
            if currentNum > 1 {
                numberArr.append(currentNum)
                
                for j in numberArr {
                    
                    if (currentNum % j == 0) {
                        count += 1
                    }
                }
                
                if (count == 1) {
                    primeArr.append(currentNum)
//                    count = 0
                }
            }
        }
        
        return primeArr
    }
}

let number = Number(a: 6, b: -7, c: 1)
let number1 = Number(a: 0, b: 0, c: 0)

number.giaiPhuongTrinhBac2()
print("")

number.giaiPhuongTrinhBac4()
print("")

number1.kiemTraSoNguyenTo(n: 20)
print("")

print("Cac so nguyen to trong khoang ban vua nhap = \(number1.cacSoNguyenToTrongKhoang(n: 20))")
