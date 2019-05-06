---
layout: post
title: Context,State and Local Storage, study them through problems
categories: React
tags: react javascript fullstack frontend textarea
---

## Introduction

Upon working on my [Capstone Project](), I came across an issue with refreshing my login and logout
links in the header component. See the snippet.

```
render(){
...
{TokenService.hasAuthToken()
   ? this.renderLogoutLink()
   : this.renderLoginLink()}
</nav>
)
...
}
```
This block of code is inside the `render()` function and basically it calls the `hasAuthToken` method from the `TokenService` component to verify if the auth-token is present.It's beyond the scope of this post to elaborate how the Authentication works in my app, so I only want to focus on the login and logout issue at hand. You can access my [project github](https://github.com/JizongL/stressTrac-client) to look at the details for Authentication if you like.

Now let's take a look at the `renderLogoutLink` and `renderLLoginLink` methods inside the `Header` component also, and as well as a handler function `handleLogoutClick` for clearing the auth-token.

**Handler**
It calls the `clearAuthToken` method from `TokenService` to wipe out the auth-token stored in local storage.
```
handleLogoutClick = () => {
    console.log(this)
    TokenService.clearAuthToken()
  }
```
**Render Logout route**
This function render the Logout link
```
  renderLogoutLink() {
    return (
      <div className='Header__logged-in'>
        <Link
          onClick={this.handleLogoutClick}
          to='/'>
          Logout
        </Link>
      </div>
    )
  }
```

**Render Login and register route**
This function renders the login and register links.
```
  renderLoginLink() {
    return (
      <div className='Header__not-logged-in'>
        <Link
          to='/register'>
          Register
        </Link>

        <Link
          to='/login'>
          Log in
        </Link>
      </div>
    )
  }
```
<img src="{{root_url | prepend: site.baseurl}}/asset/full_stack_dev/react/context-state-localStorage/logout.png">

<img src="{{root_url | prepend: site.baseurl}}/asset/full_stack_dev/react/context-state-localStorage/login.png">


So now the logic of the `Header` component is clear now, if the auth-token is not present, that means the status is in `logged out` mode and the app should render the login route(`renderLoginLink`) so that user can access the login form to login, once the user account is logged in, the account is Authenticated and the server return an auth-token, and the client stores it in local storage. When the token is present, the status is shifted to `logged in` mode, so the `renderLogoutLink` route is rendered and now user will see the logout link(see figure above).

However, it did not work as expected and once the user logs in to the account, everything else is functioning except that the header did not update properly, the `logout` link did not show until the page is refreshed manually.

## Would context or state help solve the problem?
First, we need to know something basic about react state and context, a state is set up inside a component and whenever it is updated, the component will render again. One can update the state by calling the `this.setState()` method. While Context provides a way to pass data through the component tree without having to pass props down manually at every level.

Up to this point, we understand that the header is not updated properly because the state of that component was not updated, although the token has been stored in local storage. Nothing is triggering the `render()` of the component to create the change. When the page is refreshed, the state is updated and the page is re-rendered and now the condition of `TokenService.hasAuthToken()` is changed from false to true, so the logout link route is rendered instead. But we want the header to refresh automatically, so would set up a state with a property `hideLogout` help?


 Let's try state first and a property `hideLogout` inside and then set its default value to be `true`

```
...
state={
    hideLogout:!TokenService.hasAuthToken
}

```

and also update the handler, so it will update the state

```
handleLogoutClick = () => {
    console.log(this)
    TokenService.clearAuthToken()
    this.setState({TokenService.hasAuthToken})
  }
```

and change the ternary operator to

```
render(){
...
{this.state.hideLogout
   ? this.renderLoginLink()
   : this.renderLogoutLink()}
</nav>
)
...
}

```



So, the `TokenService.hasAuthToken` is still the best tool for updating the header. After trying
exhausting the other methods associated with state and context, I came up with the following snippet that is working.  

```
render() {

    let renderHeader

     if(TokenService.hasAuthToken())
     renderHeader = this.renderLogoutAndAccountLink()

     if(!TokenService.hasAuthToken())
     renderHeader = this.renderLoginLink()

    return <>
      <nav className='Header'>

       {renderHeader}


      </nav>


    </>


```
