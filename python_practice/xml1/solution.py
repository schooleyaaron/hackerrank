def countNodeScore(node):
  count = len(node.attrib)
  for n in node:
    count += countNodeScore(n)
  return count
xml = ''
for x in range(0,int(input())):
  xml += input()
import xml.etree.ElementTree as etree
tree = etree.ElementTree(etree.fromstring(xml))
print(countNodeScore(tree.getroot()))
