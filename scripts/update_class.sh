#!/bin/bash
############################################################
# Help                                                     #
############################################################
Help()
{
   # Display Help
   echo "This script is a build tool for KNU Thesis LaTeX documents."
   echo
   echo "Syntax: script.sh [-h] [-U] [-u TEMPLATE]"
   echo "options:"
   echo "  -h, --help        Prints this help message."
   echo "  -U, --update_all  Updates all four templates (master_eng, master_kor, phd_eng, phd_kor)."
   echo "  -u, --update      Updates a specific template provided as an argument."
   echo "                    Example: ./script.sh -u master_eng"
   echo
}

############################################################
# Main program                                             #
############################################################

# Set the base path for the templates. Assuming they are in the current directory.
TEMPLATE_PATH='thesis_templates'
declare -a update_templates=() # Explicitly declare an array
create_new_zip=false

# Loop through options
while [[ "$#" -gt 0 ]]; do
    case "$1" in
        -h|--help) # print help
            Help
            exit 0
            ;;
        -U|--update_all) # update all templates
            update_templates=('master_eng' 'master_kor' 'phd_eng' 'phd_kor')
            shift # Move past the option
            ;;
        -u|--update) # update provided template
            if [[ -n "$2" && "$2" != -* ]]; then # Check if a non-option argument is provided
                update_templates+=("$2") # Append the template to the array
                shift 2 # Move past the option and its argument
            else
                echo "Error: '$1' requires a template name as an argument." >&2
                exit 1
            fi
            ;;
        -z|--zip) # create new zip files for all templates
            update_templates=('master_eng' 'master_kor' 'phd_eng' 'phd_kor')
            create_new_zip=true
            shift
            ;;
        *)
            echo "Unknown option: $1" >&2
            Help
            exit 1
            ;;
    esac
done

# 1. Create new class document
echo "Generating new thesis.cls file..."
cd knu_thesis
xetex class.ins
cd "$OLDPWD"
cp knu_thesis/thesis.cls ./thesis.cls

# 2. Copy the new class file into all template directories
echo "Copying thesis.cls to all template directories..."
for template in master_eng master_kor phd_eng phd_kor ; do 
    path="$TEMPLATE_PATH/$template"
    echo "  -> $path"
    cp -f thesis.cls "$path/thesis.cls"
done

# 3. Build the specified PDFs
# echo "Building PDFs for specified templates..."
# for template in "${update_templates[@]}"; do
#     path="$TEMPLATE_PATH/$template"
#     echo "Processing: $template"
    
#     # Check if template directory exists
#     if [ ! -d "$path" ]; then
#         echo "Warning: Directory for template '$template' not found. Skipping."
#         continue
#     fi

#     cd "$path"

#     mkdir -p .temp
    
#     # Run the LaTeX build process
#     xelatex --output-directory=.temp main.tex
#     bibtex .temp/main
#     xelatex --output-directory=.temp main.tex
#     xelatex --output-directory=.temp main.tex

#     cp -f .temp/main.pdf main.pdf
#     echo "  -> Generated main.pdf in $path"
#     cd "$OLDPWD"
# done

if $create_new_zip; then
    echo "Creating zip files..."
    cd "$TEMPLATE_PATH"

    for template in "${update_templates[@]}"; do
        zip -r "$template.zip" "$template" -x "*/.*"

        # Check the exit status of the zip command.
        if [ $? -eq 0 ]; then
            echo "Successfully created '$ZIP_FILE'."
        else
            echo "An error occurred during the zipping process."
            exit 1
        fi
    done
    cd "$OLDPWD"
fi

echo "Script finished successfully."



