#!/bin/bash

echo "starting off" 
mkdir -p src/ data/ output/

cat > .gitignore << 'EOF'
__pycache__/
*.pyc
.venv/

# Data and secrets
data/raw/*.csv
.env
*.key

# OS files
.DS_Store
EOF

echo "created .gitignore"

echo "creating requirements.txt"
cat > requirements.txt << 'EOF'
# No external packages required for basic functionality
EOF 
echo "Created requirements.txt"

## Create sample data files (students.csv with at least 8 records)
cat > data/students.csv << 'EOF'
name,age,grade,subject
Alice,21,95,English
Brian,24,92,Math
Chris,22,98,Science
Derek,24,100,English
Eddy,20,92,Science
Fred,19,88,Math
Greg,22,90,Science
Henry,25,98,English
EOF

echo "Created data/students.csv with 8 records"

## Set up Python template files with TODO placeholders
cat > src/data_analysis.py << 'EOF'
def load_students():
    # TODO: I will load the students
    pass
EOF

cat > src/data_analysis_functions.py << 'EOF' 
def load_data():
    # TODO: I will load the data
    pass
EOF 

