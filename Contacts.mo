import Map "mo:base/HashMap";
import Text "mo:base/Text";

actor Contacts {
  type Name = Text;
  type Phone = Text;

  type Entry = {
    description: Text;
    phone: Phone;
  };

  let contacts = Map.HashMap<Name, Entry>(0, Text.equal, Text.hash);

  public func insert(name: Name, entry: Entry): async () {
    contacts.put(name, entry);
  };

  public query func lookup(name: Name): async ?Entry {
    contacts.get(name);
  };

  

};
