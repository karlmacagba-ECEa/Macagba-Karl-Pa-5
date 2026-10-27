# ECE2112---PROGRAMMING-ASSIGNMENT-5

## EXP#5: Matrix Operations and Linear Systems in MATLAB

Macagba, Karl | 2ECE-A

---

## Overview

This repository contains the solution for Programming Assignment 5: Matrix Operations and Linear Systems in MATLAB. The objective of this activity is to demonstrate fundamental matrix manipulation techniques, including transposition, conjugate transposition, determinant calculations, vector norms, and solving linear systems of equations using matrix inversion and Cramer's rule.

---

## Intended Learning Outcomes (ILOs)

1. Perform basic matrix transposition and complex conjugate transpose operations in MATLAB.
2. Formulate and solve systems of linear algebraic equations ($X \cdot x = Y$) using matrix inversion.
3. Calculate determinants and analyze numerical residual norms to verify solution accuracy and stability.

---

## Problem Description

**File Name:** `Macagba,Karl_PA_5.m`

**Contents:** Contains MATLAB scripts executing basic matrix transformations on real and complex matrices, alongside solving a $4 \times 4$ system of linear equations.

---

## Part 1: Matrix Transposition and Complex Conjugates

a. **Real Matrix Transposition:** Evaluates transpose operations on real matrix $R$ using built-in functions, non-conjugate transpose (`.'`), and Hermitian transpose (`'`).

b. **Complex Matrix Transposition:** Demonstrates the difference between standard transposition (`transpose` / `.'`) and complex conjugate transposition (`'`) on complex matrix $Z$.

---

## Part 2: Linear Systems and Solutions

a. **System Inversion ($x = X^{-1} Y$):** Computes the exact solution vector `x_inv` using matrix inversion.

b. **Determinant Analysis:** Calculates $\det(X)$ to verify system non-singularity.

c. **Error Norms:** Evaluates the norm distance between numerical methods as well as the residual norm $\|X \cdot x - Y\|$ to verify precision.

---

## Code Per block

### Part 1: Transposition and Conjugates

```matlab
R = [5, -2, 0, 7; 1, 3, -4, 2; 6, 0, 8, -1];
Z = [2+3i, -1 + 4i, 5-2i; -3+i, 6, 2+5i];

transR = transpose(R);
quotR = R';  
dR = R.';

transZ = transpose(Z);
quotZ = Z';  
dZ = Z.';
```

---

### Part 2: Linear System Solution and Error Analysis

```matlab
X = [2, -1, 3, 2; 1, 4, -2, 1; 3, 2, 1, -1; -2, 3, 4, 2];
Y = [16, -7, 6, 7]';

x_inv = inv(X) * Y;

Det_x = det(X);
x_cramer = zeros(4, 1);

disp('x_inv =');
disp(x_inv);

disp('x_cramer =');
disp(x_cramer);

disp('det(X) =');
disp(Det_x);

disp('norm(x_inv - x_cramer) =');
disp(norm(x_inv - x_cramer));

disp('norm(X*x_inv - Y) =');
disp(norm(X*x_inv - Y));
```