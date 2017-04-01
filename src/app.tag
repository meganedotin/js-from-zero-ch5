<app>
  <h1>iTunes楽曲検索</h1>
  <input type="search" onkeyup={keyup} placeholder="タイトル・アーティスト">

  <section if={results.length}>
    <song each={results} cover={cover} link={link} title={title} artist={artist} preview={preview}/>
  </section>

  <p if={!results.length}>曲が見つかりません</p>

  <script>
    import lookup from './itunes-lookup.js'

    /** デフォルトの表示に使う検索クエリ */
    const defaultQuery = 'clean bandid'

    /** ここに検索結果を保持 */
    this.results = []

    /** タグのマウント時に実行 */
    this.on('mount', () => {
      lookup(defaultQuery).then(results => this.update({results}))
    })

    /** 検索フィールドでエンターキーが押されると、検索実行 */
    this.keyup = e => {
      if (e.keyCode !== 13) return
      lookup(e.target.value).then(results => this.update({results}))
    }
  </script>

  <style>
    :scope {
      display: block;
      padding: 2em;
    }
    h1 {
      border-bottom: 1px solid purple;
      color: purple;
      font-size: 130%;
      font-weight: normal;
      padding-bottom: .3em;
      margin: 0 0 .5em;
    }
    input[type=search] {
      border: 1px solid purple;
      border-radius: .5em;
      display: block;
      padding: .5em .7em;
      width: 100%;
      margin: 1em 0;
    }
    input[type=search]:focus {
      outline: none;
    }
    section {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
    }
    section > * {
      flex-basis: 7em;
      flex-grow: 1;
      margin: .5em;
    }
  </style>
</app>
