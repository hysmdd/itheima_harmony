@Entry
@Component
struct Index {
  @State message: string = '终会与你同行';

  build() {
    Column() {
      Text('小说简介')
      Row() {
        Text("都市")
        Text("生活")
        Text("情感")
        Text("男频")
      }
    }
  }
}