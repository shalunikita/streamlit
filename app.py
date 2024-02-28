import streamlit as st
 
def add_numbers(num1, num2):
    return num1 + num2
 
st.title"Addition of Two Numbers")
 
num1 = st.number_input("Enter the first number:")
num2 = st.number_input("Enter the second number:")
 
if st.button("Add"):
    result = add_numbers(num1, num2)
    st.success(f"The sum of {num1} and {num2} is: {result}")