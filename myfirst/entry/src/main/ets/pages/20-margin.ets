@Entry
@Component
struct Index {
  build() {
    Column() {
      Row() {
        Text("白敬亭").backgroundColor(Color.Pink).height(40).width(80)
        Text("杨洋").backgroundColor(Color.Green).margin({
          left: 20,
          right: 50
        }).height(40).width(80)
        Text("邓恩熙").backgroundColor(Color.Brown).height(40).width(80)
      }
      Column() {
        Text("白敬亭").backgroundColor(Color.Pink).height(40).width(80)
        Text("杨洋").backgroundColor(Color.Green).height(40).width(80)
          .margin({
            top: 30,
            bottom: 50
          })
        Text("邓恩熙").backgroundColor(Color.Brown).height(40).width(80)
      }
    }
  }
}