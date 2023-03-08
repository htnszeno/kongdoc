import 'dart:convert';
import 'dart:async';

int N = 0;
int index = 0;
int pid = 81;

void sendCmd(int cmdType, int dataType, List<int> data){


  int position = 0;
  int packageCount = 0;
  int packageNum = 0;

  //print('--- step1 ---');

  if(data.length < 10) {
    packageCount = 0;
  }else{
    var packPart1 = (data.length - 10) / 19;
    var packPart2 = (data.length - 10) % 19;
    packageCount = ((packPart2 ==0)? packPart1 : packPart2 + 1) as int;

  }

  //print('--- step2 ---');

  N += 1;
  var bytes = List<int>.filled(20, 0);

  if(data.isNotEmpty){
    //print('--- step3 ---');
    for(int i = 0 ; i < data.length ; i++){
      //print('--- step4 ---');
      if(position == 0 && i == 0){
        //print('--- step5 ---packageNum : $packageNum');
        setCmdHead(bytes, packageCount, cmdType, dataType, data);
        bytes[10] = data[i];
        position += 11;
        index += 1;
        if(i == data.length -1){
          Timer(Duration(milliseconds: (100* (packageNum + 2))), () => writeCharacteristics(bytes, 0));
        }
        continue;
      }else if(position ==0 && i != 0){
        //print('--- step5-1 ---');
        bytes[0] = utf8.encode(index.toString())[0];
        bytes[1] = data[i];
        position += 2;
        index += 1;

        if(i == data.length-1){
          Timer(Duration(milliseconds: (100* (packageNum + 2))), () => writeCharacteristics(bytes, 1));
        }
        continue;
      }
      bytes[position] = data[i];
      if(position == 19 || i == data.length-1){
        //print('--- step6 ---');
        packageNum++;
        List<int> sendPacket  = bytes;
        Timer(Duration(milliseconds: (100* (packageNum + 2))), () => writeCharacteristics(sendPacket, 2));

        position = 0;
        bytes = List<int>.filled(20,0);
      }else{
        position++;
      }

    }
  }else{
    print('data is emmpty');
  }

}

void setCmdHead(List<int> bytes, int packageCount, int cmdType, int dataType, List<int> data){

  // print('data : ${data.length}');
  // print('index : $index');
  // print('pid : $pid');
  // print('packageCount : $packageCount');
  // print('N : $N');
  // print('cmdType : $cmdType');
  // print('dataType : $dataType');

  bytes[0] = index;
  bytes[1] = pid;
  bytes[2] = packageCount;
  bytes[3] = N;
  bytes[4] = cmdType;
  bytes[5] = dataType;
  bytes[6] = 0x00;
  bytes[7] = 0x00;

  bytes[8] = (data.length >> 8);
  bytes[9] = (data.length & 0x0FF);

  // print('bytes[8] : ${bytes[8]}');
  // print('bytes[9] : ${bytes[9]}');

//   print('index : ${bytes[0]}');
//   print('pid : ${bytes[1]}');
//   print('packageCount : ${bytes[2]}');
//   print('N : ${bytes[3]}');
//   print('cmdType : ${bytes[4]}');
//   print('dataType : ${bytes[5]}');

}

void writeCharacteristics(List<int> packet , int index){
  print('======== data send to watch [$index] : $packet');
}

void main() {


  List<int> byteArray = List<int>.filled(3,0);
  byteArray[0] = 0x01;
  byteArray[1] = 0x01;
  byteArray[2] = 0x01;
  sendCmd(1, 123, byteArray);

//   List<int> utf8Bytes = [
//     0xc3, 0x8e, 0xc3, 0xb1, 0xc5, 0xa3, 0xc3, 0xa9,
//     0x72, 0xc3, 0xb1, 0xc3, 0xa5, 0xc5, 0xa3, 0xc3,
//     0xae, 0xc3, 0xb6, 0xc3, 0xb1, 0xc3, 0xa5, 0xc4,
//     0xbc, 0xc3, 0xae, 0xc5, 0xbe, 0xc3, 0xa5, 0xc5,
//     0xa3, 0xc3, 0xae, 0xe1, 0xbb, 0x9d, 0xc3, 0xb1
//   ];





  //sendCmd( 1,  1, utf8Bytes);

// var funnyWord = utf8.decode(utf8Bytes);

//   print('funnyWord : $funnyWord');


// List<int> encoded = utf8.encode('11231');
// // assert(encoded.length == utf8Bytes.length);
// // for (int i = 0; i < encoded.length; i++) {
// //   assert(encoded[i] == utf8Bytes[i]);

// // }

// print('utf8.encode : $encoded');



// const asciiEncoder = AsciiEncoder();
// const sample = '1,123,1';
// final asciiValues = asciiEncoder.convert(sample);
// print(asciiValues);


}


