import { HelloComponent } from '../components/HelloComponent'

@Entry
@Component
struct Index {
  build() {
    Column() {
      HelloComponent()
        .width(250)
        .height(60)
        .backgroundColor(Color.Gray)
        .onClick(() => {
          AlertDialog.show({
            message: '测试点击'
          })
        })
    }
    .height('100%')
  }
}

