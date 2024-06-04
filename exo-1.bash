#!/bin/bash

# Check if a root directory is specified as an argument
root_dir="${1:-.}"

# Create the directory and file structure
directories=(
    "$root_dir/personnages/mascottes"  
    "$root_dir/personnages/super heros/femmes/cape" 
    "$root_dir/personnages/super heros/femmes/sans cape"  
    "$root_dir/personnages/super heros/hommes/cape" 
    "$root_dir/personnages/super heros/hommes/sans cap"  
    "$root_dir/personnages/super heros/femmes/cape/batgirl"  
    "$root_dir/personnages/super heros/femmes/cape/wonderwoman"  
    "$root_dir/personnages/super heros/femmes/sans cape/electra" 
    "$root_dir/personnages/super heros/femmes/sans cape/superwoman" 
)

files=(
    "$root_dir/personnages/mascottes/beastie" 
    "$root_dir/personnages/mascottes/bibendum"  
    "$root_dir/personnages/mascottes/mario"  
    "$root_dir/personnages/mascottes/sonic"
    "$root_dir/personnages/super heros/hommes/cape/batman" 
    "$root_dir/personnages/super heros/hommes/cape/superman"  
    "$root_dir/personnages/super heros/hommes/cape/thor"  
    "$root_dir/personnages/super heros/hommes/sans cap/antman"  
    "$root_dir/personnages/super heros/hommes/sans cap/daredevil"  
    "$root_dir/personnages/super heros/hommes/sans cap/linuxman"  
    "$root_dir/personnages/super heros/hommes/sans cap/spiderman"  
)

# Create directories
for dir in "${directories[@]}"; do
    mkdir -m 775 -p "$dir"
done

# Create files
for file in "${files[@]}"; do
    touch -m 664 "$file"
done

# Display permissions using ls
ls -lR --color=auto "$root_dir/personnages"
