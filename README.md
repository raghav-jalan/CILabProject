# Calculator - CI/CD Lab Project

A simple Java calculator application demonstrating Continuous Integration and Continuous Deployment (CI/CD) practices.

## Project Structure

```
CILabProject/
├── src/
│   ├── main/
│   │   ├── java/com/muj/ci/Calculator.java
│   │   └── resources/
│   └── test/
│       └── java/com/muj/ci/CalculatorTest.java
├── pom.xml
├── Jenkinsfile
├── docker/
│   └── Dockerfile
├── scripts/
│   ├── build.bat
│   └── deploy.sh
└── README.md
```

## Features

The Calculator class provides the following operations:
- **Addition**: Add two numbers
- **Subtraction**: Subtract two numbers
- **Multiplication**: Multiply two numbers
- **Division**: Divide two numbers (with divide-by-zero protection)
- **Square**: Calculate square of a number

## Prerequisites

- **Java JDK 11** or higher
- **Maven 3.6+**
- **Docker** (for containerization)
- **Jenkins** (for CI/CD pipeline)

## Building the Project

### Using Maven (Command Line)

```bash
# Clean and compile
mvn clean compile

# Run tests
mvn test

# Package the application
mvn package
```

### Using Build Script (Windows)

```bash
cd scripts
build.bat
```

The JAR file will be created in the `target/` directory as `calculator-1.0-SNAPSHOT.jar`.

## Running Tests

```bash
mvn test
```

The project includes comprehensive unit tests for all calculator operations.

## Docker

### Build Docker Image

```bash
docker build -t calculator-app:latest -f docker/Dockerfile .
```

### Run Docker Container

```bash
docker run -d --name calculator-container calculator-app:latest
```

## CI/CD Pipeline

The project includes a Jenkins pipeline (`Jenkinsfile`) with the following stages:

1. **Checkout**: Get source code from repository
2. **Build**: Compile the Java code
3. **Test**: Run unit tests
4. **Package**: Create JAR file
5. **Docker Build**: Build Docker image
6. **Deploy**: Deploy the application

### Jenkins Setup

1. Create a new Pipeline job in Jenkins
2. Point to this repository
3. Configure Maven and JDK in Jenkins Global Tool Configuration
4. Run the pipeline

## Deployment

### Automated Deployment (Linux/Mac)

```bash
chmod +x scripts/deploy.sh
./scripts/deploy.sh
```

This script will:
- Stop any existing container
- Build a new Docker image
- Start the container with the latest version

## Test Coverage

The test suite includes:
- Positive test cases for all operations
- Negative test cases (e.g., division by zero)
- Edge cases (e.g., zero values, negative numbers)

## Contributing

This is a lab assignment project. Feel free to extend it with:
- More calculator operations
- Web interface
- REST API endpoints
- Enhanced CI/CD stages

## Author

MUJ CI Lab Project

## License

This project is created for educational purposes.
