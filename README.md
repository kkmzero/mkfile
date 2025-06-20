# Mkfile

Mkfile is simple batch script for creating new files from template with additional option for creating empty files. Mkfile supports all versions of Windows NT operating system with command interpreter cmd.exe.

## Installation and Setup

Copy mkfile folder anywhere you want and optionally add it to your PATH environment variable:
```bat
set path=D:\path\to\mkfile;%path%
```

You can set variable ```template_path``` in mkfile.bat to point to your own template file. If you have template file in the same folder as mkfile.bat then you can use ```%~dp0``` variable which will expand to drive letter and path of the script file:
```bat
set template_path="%~dp0my_template_file.txt"
```

... or you can simply modify/replace existing template file (template.txt) in the mkfile folder.

## Usage

You should be able to create files from template file with simple command:
```bat
mkfile myfile.cpp
```

You can use option /E to create an empty file:
```bat
mkfile myfile.cpp /E
```

Brief usage can be displayed either by not providing any options or by using /? option:
```bat
mkfile
mkfile /?
mkfile myfile.cpp /?
```

## License

Copyright (c) 2025 Ivan Kmeťo.

Licensed under the [MIT](LICENSE.txt) license.
