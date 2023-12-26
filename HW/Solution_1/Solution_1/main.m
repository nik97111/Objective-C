//
//  main.m
//  Solution_1
//
//  Created by Николай Чупреев on 25.12.2023.
//

#import <Foundation/Foundation.h>
#include <math.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Решить квадратные уравнения:
        // x^2 – 8x + 12 = 0, 12x^2 – 4x + 2 = 0, x^2 – 100x - 2 = 0 (заменять константы в коде).
        // Для вычисления квадратного корня (sqrt()) дискриминанта используем функцию math. h
        
        
        // a*x^2 + b*x + c = 1*x^2 – 8*x + 12 = 0
        
        double a = 1.0;  // x^2
        double b = -8.0; // -8x
        double c = 12.0; // 12
        
        // Вычисляем дискриминант
        double discriminant = (b * b) - (4 * a * c);
        NSLog(@"discriminant = %f", discriminant);  // discriminant = 16.000000
        // Если discriminant > 0, будет два корня - x1 и x2
        if (discriminant > 0) {
              double x1 = (-b + sqrt(discriminant)) / (2 * a);
              double x2 = (-b - sqrt(discriminant)) / (2 * a);
              NSLog(@"У этого уравнения два корня: x1 = %f, x2 = %f", x1, x2);
          } else if (discriminant == 0) {
              // Если discriminant = 0, будет один корень - x
              double x = -b / (2 * a);
              NSLog(@"У этого уравнения один корень: x = %f", x);
          } else {
              // Если discriminant < 0, то нет действительных корней
              NSLog(@"У этого уравнения нет действительных корней");
          }

        

        // 12x^2 – 4x + 2 = 0
        
        double a1 = 12.0;
        double b1 = -4.0;
        double c1 = 2.0; 
        double discriminant1 = (b1 * b1) - (4 * a1 * c1);
        NSLog(@"discriminant1 = %f", discriminant1);  // discriminant1 = -80.000000
        NSLog(@"У этого уравнения нет действительных корней");
        
        
        
        // x^2 – 100x - 2 = 0
        
        double a2 = 12.0;
        double b2 = -100.0;
        double c2 = -2.0;
        double discriminant2 = (b2 * b2) - (4 * a2 * c2);
        NSLog(@"discriminant2 = %f", discriminant2);  // discriminant2 = 10096.000000
        if (discriminant2 > 0) {
              double x4 = (-b2 + sqrt(discriminant2)) / (2 * a2);
              double x5 = (-b2 - sqrt(discriminant2)) / (2 * a2);
              NSLog(@"У этого уравнения два корня: x4 = %f, x5 = %f", x4, x5);
          } else if (discriminant2 == 0) {
              double x3 = -b2 / (2 * a2);
              NSLog(@"У этого уравнения один корень: x3 = %f", x3);
          } else {
              NSLog(@"У этого уравнения нет действительных корней");
          }
        
        
        
        
        
        // 2. Создать программу, которая находит большее число среди 3-х чисел.
        // Числа даны
        int num1 = 7;
        int num2 = 10;
        int num3 = 12;
        
        if (num1 > num2 && num1 > num3) {
            NSLog(@"%d", num1);
            NSLog(@"Большее число: num1, равное %d", num1);
        } else if (num2 > num1 && num2 > num3) {
            NSLog(@"Большее число: num2, равное %d", num2);
        } else {
            NSLog(@"Большее число: num3, равное %d", num3);
        }
        
        
        // Вводим числа
        int num4, num5, num6;
        scanf("%d", &num4);
        scanf("%d", &num5);
        scanf("%d", &num6);
        
        if (num4 > num5 && num4 > num6) {
            NSLog(@"%d", num4);
            NSLog(@"Большее число: num4 = %d", num4);
        } else if (num5 > num4 && num5 > num6) {
            NSLog(@"Большее число: num5 = %d", num5);
        } else {
            NSLog(@"Большее число: num3 = %d", num6);
        }
        
        return 0;
    }
}
