# KNU Thesis LaTeX Document Class

This repository provides a custom LaTeX document class (`thesis.cls`) for writing Master's and PhD theses that conform to the formatting guidelines of Kyungpook National University. It supports both English and Korean languages and simplifies the generation of required sections like the cover page, abstract, and bibliography.


## Table of Contents

1. [Usage on Overleaf](#1-usage-on-overleaf)

2. [Configuration & Setup](#2-configuration-&-setup)

   - [Document Class Options](#document-class-options)

   - [Setting Thesis Information](#setting-thesis-information)

   - [The Abstract](#the-abstract)

3. [Custom Commands](#3-custom-commands)

4. [Contributing](#4-contributing)



## 1. Usage on Overleaf

### Getting Started: Uploading a Template (Recommended)

The easiest way to get started is to use one of the pre-packaged templates.

1. **Download a Template**: Download the `.zip` file for the template that matches your degree and language needs.

   - **Downlaod PhD Thesis Template (.zip):** [Korean](https://github.com/lmjantsch/thesis_template/raw/refs/heads/main/thesis_templates/master_kor.zip), [Engish](https://github.com/lmjantsch/thesis_template/raw/refs/heads/main/thesis_templates/master_eng.zip)
   - **Downlaod Masters Thesis Template (.zip):** [Korean](https://github.com/lmjantsch/thesis_template/raw/refs/heads/main/thesis_templates/phd_kor.zip), [Engish](https://github.com/lmjantsch/thesis_template/raw/refs/heads/main/thesis_templates/phd_eng.zip)

2. **Upload to Overleaf**: On your Overleaf dashboard, click "New Project" and select "Upload Project".

3. **Select the Zip File**: Choose the `.zip` file you just downloaded.

Overleaf will create a new project containing all the necessary files, and you can start writing immediately.


### Optional: Staying up to date with the newest version

If you want to stay up to date with the current version of `thesis.cls` you can add the file via URL.

1. **Delete the Old Class File**: In your Overleaf project, find `thesis.cls`, right-click on it, and select "Delete".

2. **Create a New `thesis.cls`**: Click the "New File" icon, select "From external URL" and paste the following URL to import the latest version of the class file.

```
https://raw.githubusercontent.com/lmjantsch/thesis_template/refs/heads/main/thesis.cls
```
Make sure the `thesis.cls` is in the root directory.

3. **Fetch new file version**: To update your `thesis.cls` navigate to the file and click "Refresh" at the top of the page.

## 2. Configuration & Setup

### Document Class Options

The `thesis` class accepts two categories of options to define the language and degree type.

```latex
    \documentclass[12pt, <language>, <degree>]{thesis}
```

- **Language**:

  - `eng`: Sets the main language to English.

  - `kor`: Sets the main language to Korean.

- **Degree**:

  - `master`: Formats the thesis for a Master's degree.

  - `phd`: Formats the thesis for a PhD degree.

**Example:**

```latex
    % For an English Master's thesis
    \documentclass[12pt, eng, master]{thesis}

    % For a Korean PhD thesis
    \documentclass[12pt, kor, phd]{thesis}
```

### Setting Thesis Information

All metadata for the cover pages and abstract is set in the preamble of your `main.tex` file. Most commands take two arguments: the first for the primary language (cover and inner cover) and the second for the secondary language (abstract).

This Example show the thesis information for an english master thesis.
```latex

    % {Primary Language (here English)} {Secondary Language (here Korean)}
    \title{Thesis Title}{제목}
    \author{Thesis Author}{작가}
    \supervisor{Professor B}{교수님 B}
    \department{IT Department}{IT대학}
    \major{Graduate School of Computer Science and Engineering}{컴퓨터학부 대학원}
    \degree{Master of Science}{석사}
    \date{September 2025}{2025년 9월}

    % --- Committee Members ---
    % These are single-argument commands
    \chairprofessor{Professor A}
    \secondprofessor{Professor B}
    \thirdprofessor{Professor C}
```
For the PhD thesis template five committee members are requried:
```latex
    % Only required for PhD theses
    \fourthprofessor{Professor D} 
    \fifthprofessor{Professor E}
```

### The Abstract

The abstract is defined using the `\abstract{...}` command, which takes only **one argument**. This argument should contain the full text of your abstract.

**Important**: The class is designed to print the abstract in the language **opposite** to the one specified in the document class options.

- If you use the `eng` option, `\makeabstract` will print the Korean-language abstract. You should therefore write the abstract in Korean inside `\abstract{...}`.

- If you use the `kor` option, `\makeabstract` will print the English-language abstract.


## 3. Custom Commands

This class provides several commands to structure your thesis and generate specific pages.

- `\makecover`

  - Generates the outer and inner title pages based on the metadata you provided. This should be the first command after `\begin{document}`.

- `\setbodylayout`

  - Switches the page geometry from the cover page layout to the main body layout (adjusts margins, headers, etc.). Place this command immediately after `\makecover`.

- `\frontmatter`

  - Sets the page numbering to lowercase Roman numerals (i, ii, iii) and adjusts line spacing for the table of contents, list of figures, etc.

- `\mainmatter`

  - Switches page numbering to Arabic numerals (1, 2, 3) and sets the line spacing for the main content (`\onehalfspacing` for English, `\doublespacing` for Korean).

- `\backmatter`

  - Prepares the document for the final sections, such as the bibliography and abstract.

- `\makebibliography`

  - This is a wrapper for `\printbibliography`. It automatically adds a titled "References" (or "참고 문헌") section and ensures it appears in the table of contents. It should be used in the `backmatter` section.

- `\makeabstract`

  - Generates the abstract page. As described above, it will be formatted in the language opposite to the main document language. Place this command after `\makebibliography`.


## 4. Contributing

We welcome contributions and suggestions to improve this template. Please follow these guidelines:

- **General Feature Requests or Bugs**: If you find a bug or have an idea for a change that would benefit most users (e.g., updating to a new university guideline), please **create an issue**. Describe the problem or feature in detail.

- **Personal Customizations**: If you want to make a change that is specific to your personal preference and not part of the official university guidelines, we recommend you modify your local `thesis.cls` file directly or fork this repository.
