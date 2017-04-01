import fetchJsonp from'fetch-jsonp'

const apiBase = 'https://itunes.apple.com/search'

let lastQuery = ''
let lastResults = []

export default function lookup (q) {
  const query = q.trim()
  const encoded = window.encodeURI(query)
  const url = `${apiBase}?country=JP&media=music&term=${encoded}`

  if (query === lastQuery) return Promise.resolve(lastResults)

  lastQuery = query

  return fetchJsonp(url)
    .then(response => response.json())
    .then(data => {
      const results = data.results
        .sort((a, b) => b.trackId - a.trackId)
        .map(song => ({
          title: song.trackName,
          artist: song.artistName,
          cover: song.artworkUrl100,
          preview: song.previewUrl,
          link: song.trackViewUrl
        }))
      lastResults = results
      return results
    })
}
