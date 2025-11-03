# Answers to Part 3

Add your answers to the questions in Part 3, Step 2 below. 

## Vulernability Remediation:
### Vulnerability 1: 
1. Which package or library are you addressing?
PyYAML (version 5.1)

2. Which CVE is linked to this vulnerability?
CVE-2020-14343 — PyYAML allows arbitrary code execution when using yaml.load() on untrusted input.

3. What remediation steps do you suggest?
Upgrade PyYAML to version 6.0.1 or higher.
Use yaml.safe_load() instead of yaml.load() for parsing YAML data.
Example fix in requirements.txt:
    PyYAML==5.1 
    PyYAML==6.0.1

### Vulnerability 2:
1. Which vulnerability are you addressing?
Pillow (version 9.4.0)
2. Which CVE is linked to this vulnerability?
CVE-2023-44271 and CVE-2023-50447 — Pillow image decoders contained buffer overflow vulnerabilities that could lead to remote code execution when handling malicious image files.

3. What remediation steps do you suggest?
Upgrade Pillow to version 10.3.0 or higher.
Validate image files before processing to reduce risk of malformed image exploits.
Example fix in requirements.txt:
    Pillow==9.4.0
    Pillow==10.3.0 
