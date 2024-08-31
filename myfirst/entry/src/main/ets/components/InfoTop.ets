@Extend(Button)
function fancyButton(isOn: boolean) {
  .width(46)
  .height(32)
  .fontSize(12)
  .padding({ left: 5, right: 5 })
  .backgroundColor(isOn ? '#fff' : '#f7f8fa')
  .fontColor(isOn ? '#2f2e33' : '#8e9298')
  .border({ width: 1, color: isOn ? '#e4e5e6' : '#f7f8fa' })
}

@Component
export struct InfoTop {
  @State isOn: boolean = true

  onSort = (type: number) => {}

  build() {
    Row() {
      Row() {
        Text('全部评论')
          .fontColor('#222')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
      }

      Row() {
        Button('最新', { stateEffect: false })
          .fancyButton(this.isOn)
          .onClick(() => {
            this.isOn = true
            this.onSort(0)
          })
        Button('最热', { stateEffect: false })
          .fancyButton(!this.isOn)
          .onClick(() => {
            this.isOn = false
            this.onSort(1)
          })
      }
      .backgroundColor('#f7f8fa')
      .borderRadius(20)
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
    .padding(16)
  }
}