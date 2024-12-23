```actionscript
import flash.filesystem.File;
import flash.filesystem.FileStream;

function logToFile(message:String):void {
  const LOG_FILE:String = "application_log.txt";
  var file:File = File.documentsDirectory.resolvePath(LOG_FILE);
  var stream:FileStream = new FileStream();

  try {
    stream.open(file, FileMode.APPEND);
    stream.writeUTFBytes(message + "\n");
    stream.close();
  } catch (e:Error) {
    trace("Error writing to log file:", e);
  }
}

function someFunction():void {
  // Some code here
  logToFile("This is a log message");
  // More code here
}
```