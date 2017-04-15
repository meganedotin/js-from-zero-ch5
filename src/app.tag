<app>

  <script>
    import moment from 'moment'
    import lookup from './itunes-lookup.js'

    // ここにコードを書く
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
    footer {
      text-align: center;
      border-top: 1px solid #ccc;
      padding-top: 1em;
      margin-top: 1em;
    }
    time {
      color: gray;
    }
  </style>
</app>
