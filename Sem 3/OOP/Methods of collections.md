  | ArrayList | LinkedList | Iterator | Vectors | fn |
  | --------- | ---------- | -------- | --- | --- |
  | `.size()` | | | | |
  | `.set` | | | | |
  | | | | | |
  | | | `.hasNext()` | | |
  | | | `.next()` | | |
  | | | `.forEachRemaining()` | | |
  | `.add()`  | ~ | ~ | ~ | |
  | `.add( index, element)` | ~ | ~ | ~ | |
  | `.addAll()` | | | | |
  | | `.addFirst()` | | | |
  | | `.addLast()` | | | |
  | `.remove()` | ~ | ~ | ~ | |
  | | `.removeFirst()` | | | |
  | | `.removeLast()` | | | |
  | `.clear()` | | | | |
  | `.clone()` | | | | |
  | `.contains()` | | | | |
  | `.get(index)` | | | | |
  | `.indexOf(element)` | | | | |
  | `.lastIndexOf()` | | | | returns position of last element |
  | `Collections.sort(obj)` | | | | sorts lists or even objects in ascending order |
  | `Collections.sort(obj, Collections.reverseOrder()` | | | | sorts lists or even objects in descending order |   | .sort(Comparator.naturalOrder()) | | | | sorts ele. ascending order |
  | `.sort(Comparator.reverseOrder())` | | | | sorts ele. reverse order |
  | `toArray()` | | | | |
  | `.toString()` | | | | |
  | `.ensureCapacity(int minCapaity)` | | | | increases the capacity of arraylist |
  
  > `~` means same for this collection
  > while creating iterator of a collection, `Iterator<type/ objects> name = collection_name.iterator()`
