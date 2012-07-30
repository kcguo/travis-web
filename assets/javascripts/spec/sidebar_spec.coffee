describe 'the sidebar', ->
  beforeEach ->
    app 'travis-ci/travis-core/jobs/1'
    waitFor jobRendered
    runs ->
      waitFor hasText('#tab_build', 'Build #1')

  afterEach ->
    window.history.pushState({}, null, '/spec.html')

  it 'displays the expected stuff', ->
    listsQueues [
      { name: 'common', item: { number: '5.1', repo: 'travis-ci/travis-core' } }
      { name: 'common', item: { number: '5.2', repo: 'travis-ci/travis-core' } }
    ]
