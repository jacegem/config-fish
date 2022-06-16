function pcbp --wraps='poly create base & project' --description 'alias pcbp=poly create base & project'
    poly create base name:$argv
    poly create project name:$argv
end
