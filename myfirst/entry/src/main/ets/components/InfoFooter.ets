@Component
export struct InfoFooter {
  @State txt: string = ''
  onSubmitComment = (commentText: string) => {
  }

  build() {
    Row() {
      Row() {
        Text('\ue840')
          .fontSize(18)
          .fontFamily('myfont')
        TextInput({
          placeholder: '写评论...',
          text: $$this.txt,
        })
          .fontSize(18)
          .backgroundColor(Color.Transparent)
          .onSubmit(() => {
            this.onSubmitComment(this.txt)
          })
      }
      .layoutWeight(1)
      .backgroundColor("#f4f6f5")
      .padding({ left: 15, right: 10 })
      .margin({
        left: 15,
        right: 20,
        top: 10,
        bottom: 10
      })
      .borderRadius(20)

      Row({ space: 10 }) {
        Text('\ue600')
          .fontSize(26)
          .fontFamily('myfont')
        Text('\ue61d')
          .fontSize(26)
          .fontFamily('myfont')
      }
      .margin({ right: 10 })
    }
    .width('100%')
    .height(60)

    // .padding({ left: 10, right: 10 })

    // .backgroundColor(Color.Orange)
  }
}