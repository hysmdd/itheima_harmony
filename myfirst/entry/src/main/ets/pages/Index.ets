@Entry
@Component
struct Index {
  @State message: string = '终会与你同行';

  build() {
    Column() {
      Text('小说简介')
        .height(40)
        .width('100%')
        .fontWeight(FontWeight.Bold)
      Row() {
        Text("都市").width(50).height(30).backgroundColor(Color.Orange)
        Text("生活").width(50).height(30).backgroundColor(Color.Pink)
        Text("情感").width(50).height(30).backgroundColor(Color.Yellow)
        Text("男频").width(50).height(30).backgroundColor(Color.Gray)
      }
      .width('100%')
    }
    .width('100%')
  }
}