# Monty: A Toy Programming Language

Monty is a lightweight, Python-inspired programming language built with a Just-In-Time (JIT) compiler for speed and efficiency. Developed in Haskell and powered by LLVM, Monty is designed to be a simple, expressive, and flexible language with a syntax that’s easy to learn. Monty is a great way to explore language design, compiler construction, and the power of JIT compilation. The compiler design is based on the tutorial [Implementing a JIT Compiled Language with Haskell and LLVM](https://smunix.github.io/www.stephendiehl.com/llvm/index.html), making it ideal for educational purposes and further customization.

## Features

- **Python-Like Syntax**: Monty’s syntax is inspired by Python, making it easy to read and intuitive for Python developers.
- **JIT Compilation**: Monty uses LLVM to provide Just-In-Time compilation, giving it faster execution speed compared to interpreted languages.
- **Built with Haskell and LLVM**: Monty leverages Haskell for its clean, functional implementation, and LLVM for powerful optimization and code generation.
- **Toy Language for Learning**: Monty is an educational tool aimed at helping users understand the fundamentals of compilers, syntax trees, and code generation.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/turtel216/Monty.git
   cd monty
   ```

2. Build the Monty compiler:
   ```bash
   cabal build
   ```

3. Run the compiler:
   ```bash
   cabal run monty
   ```

## Basic Syntax

Monty adopts a syntax that is similar to Python, with basic constructs for variables, conditionals, loops, and functions. Here’s a small taste of Monty syntax:

> [!NOTE]  
> The language's syntax is will be changed in the future.

```monty
# Variables and arithmetic
a = 5
b = 10
result = a + b * 2

# Conditional
if result > 20:
    print("Result is large!")
else:
    print("Result is small.")

# Loop
for i in range(0, 10):
    print(i)

# Function
def add(x, y):
    return x + y

# Calling a function
sum = add(3, 4)
print(sum)
```

## Running Monty Code

To execute a Monty program, simply pass the `.my` file to the Monty interpreter:

```bash
cabal run monty examples/hello_world.my
```

### Example Code

You can find example Monty code in the `examples/` folder of this repository.

## Development

Monty is built with:

- **Haskell**: For parsing, AST generation, and handling of Monty's internal representation.
- **LLVM**: To provide Just-In-Time (JIT) compilation and low-level optimizations.
- **Cabal**: For project management and building the Monty language.

## Contributing

Contributions are welcome! If you want to add features, fix bugs, or improve documentation, please feel free to submit a pull request.

## License

Monty is released under the MIT License.

---

Give Monty a try and start exploring the fascinating world of compilers and programming language design!
