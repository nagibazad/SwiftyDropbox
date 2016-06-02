///
/// Auto-generated by Stone, do not modify.
///

import Foundation

/**
    Datatypes and serializers for the team_policies namespace
*/
public class TeamPolicies {
    /**
        The EmmState union
    */
    public enum EmmState: CustomStringConvertible {
        /**
            Emm token is disabled
        */
        case Disabled
        /**
            Emm token is optional
        */
        case Optional
        /**
            Emm token is required
        */
        case Required
        case Other

        public var description: String {
            return "\(SerializeUtil.prepareJSONForSerialization(EmmStateSerializer().serialize(self)))"
        }
    }
    public class EmmStateSerializer: JSONSerializer {
        public init() { }
        public func serialize(value: EmmState) -> JSON {
            switch value {
                case .Disabled:
                    var d = [String: JSON]()
                    d[".tag"] = .Str("disabled")
                    return .Dictionary(d)
                case .Optional:
                    var d = [String: JSON]()
                    d[".tag"] = .Str("optional")
                    return .Dictionary(d)
                case .Required:
                    var d = [String: JSON]()
                    d[".tag"] = .Str("required")
                    return .Dictionary(d)
                case .Other:
                    var d = [String: JSON]()
                    d[".tag"] = .Str("other")
                    return .Dictionary(d)
            }
        }
        public func deserialize(json: JSON) -> EmmState {
            switch json {
                case .Dictionary(let d):
                    let tag = Serialization.getTag(d)
                    switch tag {
                        case "disabled":
                            return EmmState.Disabled
                        case "optional":
                            return EmmState.Optional
                        case "required":
                            return EmmState.Required
                        case "other":
                            return EmmState.Other
                        default:
                            return EmmState.Other
                    }
                default:
                    fatalError("Failed to deserialize")
            }
        }
    }
    /**
        Policy governing which shared folders a team member can join.
    */
    public enum SharedFolderJoinPolicy: CustomStringConvertible {
        /**
            Team members can only join folders shared by teammates.
        */
        case FromTeamOnly
        /**
            Team members can join any shared folder, including those shared by users outside the team.
        */
        case FromAnyone
        case Other

        public var description: String {
            return "\(SerializeUtil.prepareJSONForSerialization(SharedFolderJoinPolicySerializer().serialize(self)))"
        }
    }
    public class SharedFolderJoinPolicySerializer: JSONSerializer {
        public init() { }
        public func serialize(value: SharedFolderJoinPolicy) -> JSON {
            switch value {
                case .FromTeamOnly:
                    var d = [String: JSON]()
                    d[".tag"] = .Str("from_team_only")
                    return .Dictionary(d)
                case .FromAnyone:
                    var d = [String: JSON]()
                    d[".tag"] = .Str("from_anyone")
                    return .Dictionary(d)
                case .Other:
                    var d = [String: JSON]()
                    d[".tag"] = .Str("other")
                    return .Dictionary(d)
            }
        }
        public func deserialize(json: JSON) -> SharedFolderJoinPolicy {
            switch json {
                case .Dictionary(let d):
                    let tag = Serialization.getTag(d)
                    switch tag {
                        case "from_team_only":
                            return SharedFolderJoinPolicy.FromTeamOnly
                        case "from_anyone":
                            return SharedFolderJoinPolicy.FromAnyone
                        case "other":
                            return SharedFolderJoinPolicy.Other
                        default:
                            return SharedFolderJoinPolicy.Other
                    }
                default:
                    fatalError("Failed to deserialize")
            }
        }
    }
    /**
        Policy governing who can be a member of a folder shared by a team member.
    */
    public enum SharedFolderMemberPolicy: CustomStringConvertible {
        /**
            Only a teammate can be a member of a folder shared by a team member.
        */
        case Team
        /**
            Anyone can be a member of a folder shared by a team member.
        */
        case Anyone
        case Other

        public var description: String {
            return "\(SerializeUtil.prepareJSONForSerialization(SharedFolderMemberPolicySerializer().serialize(self)))"
        }
    }
    public class SharedFolderMemberPolicySerializer: JSONSerializer {
        public init() { }
        public func serialize(value: SharedFolderMemberPolicy) -> JSON {
            switch value {
                case .Team:
                    var d = [String: JSON]()
                    d[".tag"] = .Str("team")
                    return .Dictionary(d)
                case .Anyone:
                    var d = [String: JSON]()
                    d[".tag"] = .Str("anyone")
                    return .Dictionary(d)
                case .Other:
                    var d = [String: JSON]()
                    d[".tag"] = .Str("other")
                    return .Dictionary(d)
            }
        }
        public func deserialize(json: JSON) -> SharedFolderMemberPolicy {
            switch json {
                case .Dictionary(let d):
                    let tag = Serialization.getTag(d)
                    switch tag {
                        case "team":
                            return SharedFolderMemberPolicy.Team
                        case "anyone":
                            return SharedFolderMemberPolicy.Anyone
                        case "other":
                            return SharedFolderMemberPolicy.Other
                        default:
                            return SharedFolderMemberPolicy.Other
                    }
                default:
                    fatalError("Failed to deserialize")
            }
        }
    }
    /**
        Policy governing the visibility of newly created shared links.
    */
    public enum SharedLinkCreatePolicy: CustomStringConvertible {
        /**
            By default, anyone can access newly created shared links. No login will be required to access the shared
            links unless overridden.
        */
        case DefaultPublic
        /**
            By default, only members of the same team can access newly created shared links. Login will be required to
            access the shared links unless overridden.
        */
        case DefaultTeamOnly
        /**
            Only members of the same team can access newly created shared links. Login will be required to access the
            shared links.
        */
        case TeamOnly
        case Other

        public var description: String {
            return "\(SerializeUtil.prepareJSONForSerialization(SharedLinkCreatePolicySerializer().serialize(self)))"
        }
    }
    public class SharedLinkCreatePolicySerializer: JSONSerializer {
        public init() { }
        public func serialize(value: SharedLinkCreatePolicy) -> JSON {
            switch value {
                case .DefaultPublic:
                    var d = [String: JSON]()
                    d[".tag"] = .Str("default_public")
                    return .Dictionary(d)
                case .DefaultTeamOnly:
                    var d = [String: JSON]()
                    d[".tag"] = .Str("default_team_only")
                    return .Dictionary(d)
                case .TeamOnly:
                    var d = [String: JSON]()
                    d[".tag"] = .Str("team_only")
                    return .Dictionary(d)
                case .Other:
                    var d = [String: JSON]()
                    d[".tag"] = .Str("other")
                    return .Dictionary(d)
            }
        }
        public func deserialize(json: JSON) -> SharedLinkCreatePolicy {
            switch json {
                case .Dictionary(let d):
                    let tag = Serialization.getTag(d)
                    switch tag {
                        case "default_public":
                            return SharedLinkCreatePolicy.DefaultPublic
                        case "default_team_only":
                            return SharedLinkCreatePolicy.DefaultTeamOnly
                        case "team_only":
                            return SharedLinkCreatePolicy.TeamOnly
                        case "other":
                            return SharedLinkCreatePolicy.Other
                        default:
                            return SharedLinkCreatePolicy.Other
                    }
                default:
                    fatalError("Failed to deserialize")
            }
        }
    }
    /**
        Policies governing team members.
    */
    public class TeamMemberPolicies: CustomStringConvertible {
        /// Policies governing sharing.
        public let sharing: TeamPolicies.TeamSharingPolicies
        /// This describes the Enterprise Mobility Management (EMM) state for this team. This information can be used to
        /// understand if an organization is integrating with a third-party EMM vendor to further manage and apply
        /// restrictions upon the team's Dropbox usage on mobile devices. This is a new feature and in the future we'll
        /// be adding more new fields and additional documentation.
        public let emmState: TeamPolicies.EmmState
        public init(sharing: TeamPolicies.TeamSharingPolicies, emmState: TeamPolicies.EmmState) {
            self.sharing = sharing
            self.emmState = emmState
        }
        public var description: String {
            return "\(SerializeUtil.prepareJSONForSerialization(TeamMemberPoliciesSerializer().serialize(self)))"
        }
    }
    public class TeamMemberPoliciesSerializer: JSONSerializer {
        public init() { }
        public func serialize(value: TeamMemberPolicies) -> JSON {
            let output = [ 
            "sharing": TeamPolicies.TeamSharingPoliciesSerializer().serialize(value.sharing),
            "emm_state": TeamPolicies.EmmStateSerializer().serialize(value.emmState),
            ]
            return .Dictionary(output)
        }
        public func deserialize(json: JSON) -> TeamMemberPolicies {
            switch json {
                case .Dictionary(let dict):
                    let sharing = TeamPolicies.TeamSharingPoliciesSerializer().deserialize(dict["sharing"] ?? .Null)
                    let emmState = TeamPolicies.EmmStateSerializer().deserialize(dict["emm_state"] ?? .Null)
                    return TeamMemberPolicies(sharing: sharing, emmState: emmState)
                default:
                    fatalError("Type error deserializing")
            }
        }
    }
    /**
        Policies governing sharing within and outside of the team.
    */
    public class TeamSharingPolicies: CustomStringConvertible {
        /// Who can join folders shared by team members.
        public let sharedFolderMemberPolicy: TeamPolicies.SharedFolderMemberPolicy
        /// Which shared folders team members can join.
        public let sharedFolderJoinPolicy: TeamPolicies.SharedFolderJoinPolicy
        /// What is the visibility of newly created shared links.
        public let sharedLinkCreatePolicy: TeamPolicies.SharedLinkCreatePolicy
        public init(sharedFolderMemberPolicy: TeamPolicies.SharedFolderMemberPolicy, sharedFolderJoinPolicy: TeamPolicies.SharedFolderJoinPolicy, sharedLinkCreatePolicy: TeamPolicies.SharedLinkCreatePolicy) {
            self.sharedFolderMemberPolicy = sharedFolderMemberPolicy
            self.sharedFolderJoinPolicy = sharedFolderJoinPolicy
            self.sharedLinkCreatePolicy = sharedLinkCreatePolicy
        }
        public var description: String {
            return "\(SerializeUtil.prepareJSONForSerialization(TeamSharingPoliciesSerializer().serialize(self)))"
        }
    }
    public class TeamSharingPoliciesSerializer: JSONSerializer {
        public init() { }
        public func serialize(value: TeamSharingPolicies) -> JSON {
            let output = [ 
            "shared_folder_member_policy": TeamPolicies.SharedFolderMemberPolicySerializer().serialize(value.sharedFolderMemberPolicy),
            "shared_folder_join_policy": TeamPolicies.SharedFolderJoinPolicySerializer().serialize(value.sharedFolderJoinPolicy),
            "shared_link_create_policy": TeamPolicies.SharedLinkCreatePolicySerializer().serialize(value.sharedLinkCreatePolicy),
            ]
            return .Dictionary(output)
        }
        public func deserialize(json: JSON) -> TeamSharingPolicies {
            switch json {
                case .Dictionary(let dict):
                    let sharedFolderMemberPolicy = TeamPolicies.SharedFolderMemberPolicySerializer().deserialize(dict["shared_folder_member_policy"] ?? .Null)
                    let sharedFolderJoinPolicy = TeamPolicies.SharedFolderJoinPolicySerializer().deserialize(dict["shared_folder_join_policy"] ?? .Null)
                    let sharedLinkCreatePolicy = TeamPolicies.SharedLinkCreatePolicySerializer().deserialize(dict["shared_link_create_policy"] ?? .Null)
                    return TeamSharingPolicies(sharedFolderMemberPolicy: sharedFolderMemberPolicy, sharedFolderJoinPolicy: sharedFolderJoinPolicy, sharedLinkCreatePolicy: sharedLinkCreatePolicy)
                default:
                    fatalError("Type error deserializing")
            }
        }
    }
}
