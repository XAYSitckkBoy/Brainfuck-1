use std::io;

fn main() {
    println!("improve brianfuck");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}

use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
use std::io;

fn main() {
    println!("Simple Calculator");

    loop {
        println!("Enter the first number:");
        let mut num1 = String::new();
        io::stdin().read_line(&mut num1).expect("Failed to read line");
        let num1: f64 = match num1.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Enter the second number:");
        let mut num2 = String::new();
        io::stdin().read_line(&mut num2).expect("Failed to read line");
        let num2: f64 = match num2.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("Select operation (+, -, *, /):");
        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Failed to read line");
        let operation: char = match operation.trim().chars().next() {
            Some(op) => op,
            None => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        let result = match operation {
            '+' => num1 + num2,
            '-' => num1 - num2,
            '*' => num1 * num2,
            '/' => {
                if num2 != 0.0 {
                    num1 / num2
                } else {
                    println!("Error: Division by zero.");
                    continue;
                }
            }
            _ => {
                println!("Invalid operation. Please enter a valid operation.");
                continue;
            }
        };

        println!("Result: {}", result);

        println!("Do you want to perform another calculation? (yes/no)");
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        if input.trim().to_lowercase() != "yes" {
            break;
        }
    }
}
