def countNodeScore(node):
  count = len(node.attrib)
  for n in node:
    count += countNodeScore(n)
  return count

def maxDepth(node):
  max = 0
  for n in node:
    m = maxDepth(n) + 1
    max = m if m > max else max
  return max
xml = ''
for x in range(0,int(input())):
  xml += input()
import xml.etree.ElementTree as etree
tree = etree.ElementTree(etree.fromstring(xml))
max = 0
print(maxDepth(tree.getroot()))
