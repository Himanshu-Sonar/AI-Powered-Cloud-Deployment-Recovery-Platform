log_file = "deployment.log"

with open(log_file, "r") as file:
    logs = file.read()

if "permission denied" in logs.lower():
    print("Permission Error Detected")
    print("Suggestion: Check file permissions")

elif "apache" in logs.lower():
    print("Apache Service Error")
    print("Suggestion: Restart Apache")

else:
    print("No critical issues detected")
