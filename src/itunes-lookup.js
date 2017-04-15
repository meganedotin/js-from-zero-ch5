import fetchJsonp from'fetch-jsonp'

const apiBase = 'https://itunes.apple.com/search'

let lastQuery = ''
let lastResults = []

export default function lookup (q) {
  const query = q.trim()
  const encoded = window.encodeURI(query)
  const url = `${apiBase}?country=JP&media=music&term=${encoded}`

  /** 直前と同じくエリーの場合はキャッシュしている結果を返す */
  if (query === lastQuery) return Promise.resolve(lastResults)

  lastQuery = query

  // ここにコードを書く
}
