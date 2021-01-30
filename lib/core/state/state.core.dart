import 'package:portfolio/core/state/companiesBlock/companiesBlock.store.dart';
import 'package:portfolio/core/state/emailHover/emailHover.store.dart';
import 'package:portfolio/core/state/githubHover/gitHubHover.store.dart';
import 'package:portfolio/core/state/iconHover/iconHover.store.dart';
import 'package:portfolio/core/state/instagramHover/instagramHover.store.dart';
import 'package:portfolio/core/state/linkedInHover/linkedInHover.store.dart';
import 'package:portfolio/core/state/myStoryBlock/myStoryBlock.store.dart';
import 'package:portfolio/core/state/profileHover/profileHover.store.dart';
import 'package:portfolio/core/state/programmingBlock/programmingBlock.store.dart';
import 'package:portfolio/core/state/projectsBlock/projectsBlock.store.dart';
import 'package:portfolio/core/state/safeCompany/safeCompany.store.dart';
import 'package:portfolio/core/state/spotifyHover/spotifyHover.store.dart';
import 'package:portfolio/core/state/statsBox/statsBox.store.dart';
import 'package:portfolio/core/state/twitterHover/twitterHover.store.dart';
import 'package:portfolio/core/state/zyndicateCompany/zyndicateCompany.store.dart';

class State {
  // Profile Picture
  IconHoverStore iconHoverStore = IconHoverStore();
  ProfileHoverStore profileHoverStore = ProfileHoverStore();

  // Media Icons
  EmailHoverStore emailHoverStore = EmailHoverStore();
  GitHubHoverStore gitHubHoverStore = GitHubHoverStore();
  InstagramHoverStore instagramHoverStore = InstagramHoverStore();
  LinkedInHoverStore linkedInHoverStore = LinkedInHoverStore();
  SpotifyHoverStore spotifyHoverStore = SpotifyHoverStore();
  TwitterHoverStore twitterHoverStore = TwitterHoverStore();

  // Content Blocks
  MyStoryBlockStore myStoryBlockStore = MyStoryBlockStore();
  CompaniesBlockStore companiesBlockStore = CompaniesBlockStore();
  ProgrammingBlockStore programmingBlockStore = ProgrammingBlockStore();
  ProjectsBlockStore projectsBlockStore = ProjectsBlockStore();

  // Company Hovers
  ZyndicateCompanyStore zyndicateCompanyStore = ZyndicateCompanyStore();
  SafeCompanyStore safeCompanyStore = SafeCompanyStore();

  //Programming Hovers
  StatsBoxStore statsBoxStore = StatsBoxStore();
}
