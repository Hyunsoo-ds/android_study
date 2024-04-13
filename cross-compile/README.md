# Android platform Cross-compile bash script

### Setting before usage
1. link hcomp.sh file to hcomp
     ```
     ln -s ./hcomp.sh hcomp
     ```
2. Export current directory to PATH variable.
   ```
   export PATH=$PATH:~/{current_dir}
   ```
3. If you want to use script continuously regradless of logout or login
   - Add `export PATH=$PATH:~/{current_dir}` to ~/.bashrc or ~/.zshrc
  
### How to use
```
  hcomp {output_file_name} {input_file_name} {target_architecture}
```
- ex) `hcomp helloworld_arm32 helloworld.c arm32`
  - `helloworld.c` will be compiled to `helloworld_arm32` binary that can be run on `arm32` architecture.
 
- default `target_architecture` is `x64`
- You can choose among `arm64`, `arm32`, and `x64`
