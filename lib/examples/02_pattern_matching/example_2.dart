void main() {
  const user = <String, dynamic>{
    'name': 'Steven',
    'age': 18,
    'metadata': {
      'avatar': 'fake_avatar',
      'emailVerified': true,
    },
  };

  if (user['metadata']['avatar'] == 'fake_avatar' &&
      user['metadata']['emailVerified'] == true) {
    print('✅');
  }
}
