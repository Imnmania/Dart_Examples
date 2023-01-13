///* -----------------------
///* Family Member Operators
///* -----------------------

void main(List<String> args) {
  final dad = FamilyMember(name: 'Dad');
  final mom = FamilyMember(name: 'Mom');
  final family = dad + mom;
  print(family);
}

class FamilyMember {
  final String name;

  const FamilyMember({
    required this.name,
  });

  @override
  String toString() {
    return 'Family Member (name = $name)';
  }
}

extension ToFamily on FamilyMember {
  Family operator +(FamilyMember other) {
    return Family(
      members: [this, other],
    );
  }
}

class Family {
  final List<FamilyMember> members;

  const Family({
    required this.members,
  });

  @override
  String toString() {
    return 'Family (members = $members)';
  }
}
