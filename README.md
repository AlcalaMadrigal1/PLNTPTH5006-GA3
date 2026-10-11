

# GA3 answers - Antonio Alcala Madrigal

------------------------------------------------------------------------

## Part A: Your README, data, and Git repo

### 1: Create subdirs and copy files

### 2: Initialize a Git repository, and commit the README and `.gitignore`

### 3: Commit throughout the assignment
------------------------------------------------------------------------

## Part B: Basic shell scripts

### 4: Predict the output of `echo.sh`

*I predict that the script will print information corresponding to October 7* (prediction and reasoning for `bash scripts/echo.sh Oct07 Oct08`):

*I predict that the script will print information corresponding to October 8* (prediction and reasoning for `bash scripts/echo.sh Oct07 Oct08 Oct09 Oct10`):

*I predict that the script will print the same information as the previous command, corresponding to October 9* (prediction and reasoning for `bash scripts/echo.sh Oct07 Oct08 "Oct09 Oct10"`):

*I predict that the script will finish and does not to print anything* (prediction and reasoning for `bash scripts/echo.sh results/fastqc/*.html`):

### 5: Run `echo.sh` and compare with your predictions

```bash
bash scripts/echo.sh Oct07 Oct08
```

The output of the command was:  

```
Oct07
Oct08
scripts/echo.sh: line 6: $3: unbound variable         
```

```bash
bash scripts/echo.sh Oct07 Oct08 Oct09 Oct10
```

The output of the command was:

```
Oct07
Oct08
Oct09
Finished         
```

```bash
bash scripts/echo.sh Oct07 Oct08 "Oct09 Oct10"
```

The output of the command was:

```
Oct07
Oct08
Oct09 Oct10
Finished         
```

```bash
bash scripts/echo.sh results/fastqc/*.html
```

The output of the command was:

```
results/fastqc/S63_R1_fastqc.html
results/fastqc/S63_R2_fastqc.html
results/fastqc/S64_R1_fastqc.html
Finished         
```

*All my predictions were different from the actual outputs because I initially misunderstood how Bash handles arguments.*: Which output (if any) differed from your prediction, and why?

### 6: Write the `printline.sh` script


### 7: Test `printline.sh` twice

Test 1:

```bash
bash scripts/printline.sh data/metadata.tsv 2
```

The output of the command was:

```
 S82     10dpi   cathemerium        
```

Test 2 (with redirection), and checking the contents of the output file:

```bash
bash scripts/printline.sh data/metadata.tsv 3 > results/printline_test.txt
```

The output of the command that checks the file contents was:

```
S75     10dpi   cathemerium         
```

------------------------------------------------------------------------

## Part C: A script to run MultiQC

### 8: Get a MultiQC container link

*Answer*: The container link (URI) is: oras://community.wave.seqera.io/library/multiqc:1.35--562c547b518ebe20

### 9: MultiQC's help info, and the MultiQC command

Code to run `multiqc --help` with the container:

```bash
apptainer exec oras://community.wave.seqera.io/library/multiqc:1.35--562c547b518ebe20 multiqc --help
```

The MultiQC command to run MultiQC on `results/fastqc` with output in `results/multiqc`:

```bash
apptainer exec oras://community.wave.seqera.io/library/multiqc:1.35--562c547b518ebe20 multiqc results/fastqc -o results/multiqc
```

### 10: Write the `multiqc.sh` script

### 11: Run `multiqc.sh`

Code to run the script:

```bash
bash scripts/multiqc.sh
```

*Answer*: 44

Does that match what you expected? Why/why not? 
Yes, because we had 44 HTML files, each corresponding to one FastQC report.

### 12: Make `multiqc.sh` accept arguments, and rerun it

Code to rerun the script:

```bash
bash scripts/multiqc.sh results/fastqc results/multiqc
```

### 13: Differences between the two MultiQC runs

*Answer*: Both runs found 44 FastQC reports. However, the output file names changed in the second run because files with the same names already existed. 

------------------------------------------------------------------------

## Part D: Pandoc to render Markdown

### 14: The structure of the Pandoc command

*Answer* (options and arguments, and what each does):pandoc is the program, -o is the option to specify the output file, README.pdf is the output file, and README.md is the input file.

*Answer* (how does Pandoc know which output format to produce?):Pandoc knows the output format from the file extension. For example .pdf tells Pandoc to create a PDF file.

### 15: Render your README to PDF and HTML

```bash
pandoc -o README.pdf README.md
```

- Command to render to HTML:

```bash
pandoc -o README.html README.md
```

### 16: Should the rendered files be committed?

*Answer*: Should the rendered files be committed to your Git repo? Why/why not? No, because we can generate the PDF and HTML files again from README.md using Pandoc. It would only be necessary to include them if we wanted to make these formats available for download.

### 17: Install the PDF Viewer extension and view the PDF

*Answer*: One observation about the rendered PDF file:I think the format is clear and easy to understand, and I like how the information is presented. However, I noticed that my name was not displayed, which helped me realize that I need to correct it in my README file.

## Part E: Publish your repo on GitHub

### 18: Create a GitHub repository


### 19: Connect your local repo to GitHub, and push


### 20: Create an Issue to tag the instructors


------------------------------------------------------------------------

## Bonus

### 21: Explore the MultiQC report

*Answer* (one insight you gained):

*Answer* (one thing you're confused about):

### 22: Pandoc versions

```bash
# Your command:
```

The output of the command(s) was:

```         
```

*Answer*: Is the Pandoc version available by default the most recent one?

*Answer*: Which Pandoc version are you using after loading the module?