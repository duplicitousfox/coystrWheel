
// Run the companion program

if (os_type == os_windows) {
    // Not all commmands will be recognized - i.e. the Windows-specific "start" command will not work
    execute_shell(working_directory + "coystrwheelcompanion.exe", false); 
}