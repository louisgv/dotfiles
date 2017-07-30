atom.commands.add 'atom-workspace',
  'custom:insert-date': ->
    now = new Date()
    atom.workspace.getActiveTextEditor().insertText(now.toISOString())
