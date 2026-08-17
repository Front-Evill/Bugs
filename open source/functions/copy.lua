local function copy(txt)
  if copy == '' or not copy then return end
  local sc 
  if setclipboard then
    setclipboard(tostring(txt))
    sc = true
  elseif toclipboard then
    toclipboard(tostring(txt))
    sc = true
  elseif writeclipboard then
    wroteclipboard(tostring(txt))
    sc = true
    --[[
  else
    Notify('Error', 'Not work the clibpboard', 5)
    sc = false ]]
  end
end
