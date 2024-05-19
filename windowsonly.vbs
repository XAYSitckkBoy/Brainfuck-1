Option Explicit

Dim secretNumber
Dim guess

Randomize ' Initialize random number generator
secretNumber = Int((100 * Rnd) + 1) ' Generate random number between 1 and 100

WScript.Echo "Welcome to the Guessing Game!"
WScript.Echo "Guess a number between 1 and 100:"

Do While True
    guess = InputBox("Your guess:")
    
    ' Validate input
    If Not IsNumeric(guess) Then
        MsgBox "Invalid input. Please enter a number."
    ElseIf guess < 1 Or guess > 100 Then
        MsgBox "Invalid guess. Please enter a number between 1 and 100."
    Else
        ' Compare guess with secret number
        If guess < secretNumber Then
            MsgBox "Too low! Try again."
        ElseIf guess > secretNumber Then
            MsgBox "Too high! Try again."
        Else
            MsgBox "Congratulations! You guessed the number!"
            Exit Do
        End If
    End If
Loop
