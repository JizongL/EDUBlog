class ListNode:
    def __init__(self,item = None,link = None):
        self.__item = item
        self.__link = link

    def get_item(self):
        return self.__item

    def set_item(self,item):
        self.__item = item

    def get_link(self):
        return self.__link

    def set_link(self,link):
        self.__link = link

## build a list
head = ListNode(3)
head = ListNode(4,head)
head = ListNode(5,head)
head = ListNode(6,head)

## set change as teh pointer to the link of 5.
change  = head
while change.get_item()!=5:
    change = change.get_link()
## make new node 15, and set its link to the same link of 5, which connects to the next item.
temp = ListNode(15,change.get_link())
## set link of 5 to the new node.
change.set_link(temp)

print("test adding an item in the middle")
## pointer
node_ptr = head

## print out the list as a test
while node_ptr != None:
    print(node_ptr.get_item())
    node_ptr = node_ptr.get_link()

print("test remove the head")
## this removes the head link.

head = head.get_link()
## test the list after head is removed.
node_ptr = head
while node_ptr != None:
    print(node_ptr.get_item())
    node_ptr = node_ptr.get_link()


## remove items in the middle
target = head

while target.get_item() != 4:
    change = target
    target = target.get_link()
change.set_link(target.get_link())
target = None


print("test remove target item in the middle")
## test the list after head is removed.
node_ptr = head
while node_ptr != None:
    print(node_ptr.get_item())
    node_ptr = node_ptr.get_link()


print("test remove last item")
target = head
while target.get_link()!=None:
    change = target
    target = target.get_link()
change.set_link(None)
target = None

## print result after last item is removed.
node_ptr = head
while node_ptr != None:
    print(node_ptr.get_item())
    node_ptr = node_ptr.get_link()
